<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_enviornment"></a> [enviornment](#module\_enviornment) | ../modules/environment | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_resource_group.kubernetes](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | Container registry name | `string` | n/a | yes |
| <a name="input_k8s_cluster_name"></a> [k8s\_cluster\_name](#input\_k8s\_cluster\_name) | Map with two different name for a group | `map` | <pre>{<br>  "k8s-production": "k8s-production",<br>  "k8s-staging": "k8s-staging"<br>}</pre> | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Node amount in the cluster | `number` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Location of the resource group | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource group name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->