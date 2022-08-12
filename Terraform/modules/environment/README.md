<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.k8s](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_role_assignment.kubweb_to_acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_k8s_cluster_name"></a> [k8s\_cluster\_name](#input\_k8s\_cluster\_name) | Kubernetes cluster name | `string` | n/a | yes |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Node amount in the cluster | `number` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | ID of acr | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->