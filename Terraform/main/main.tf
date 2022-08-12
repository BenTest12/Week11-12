# Create a resource group

resource "azurerm_resource_group" "kubernetes" {
  name     = var.rg_name
  location = var.rg_location
}


# Create container registry

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.kubernetes.name
  location            = azurerm_resource_group.kubernetes.location
  sku                 = "Basic"
  admin_enabled       = true
}

module "enviornment" {
  source                   = "../modules/environment"
  for_each                 = var.k8s_cluster_name 
  k8s_cluster_name         = each.value
  rg_name                  = azurerm_resource_group.kubernetes.name
  scope                    = azurerm_container_registry.acr.id
  node_count               = var.node_count
}