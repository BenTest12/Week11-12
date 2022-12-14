# Create AKS cluster
resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.k8s_cluster_name
  location            = var.k8s_cluster_name == "k8s-staging" ? "eastus" : "eastus2"
  resource_group_name = var.rg_name
  dns_prefix          = "${var.k8s_cluster_name}-dns"
  role_based_access_control_enabled = true
  
  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "agentpool"
    node_count = var.node_count
    vm_size    = "Standard_B2s"
  }


  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet"
  }

}

# add the role to the identity the kubernetes cluster was assigned
resource "azurerm_role_assignment" "kubweb_to_acr" {
  scope                = var.scope
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.k8s.kubelet_identity[0].object_id
}