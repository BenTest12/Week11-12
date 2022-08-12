variable "rg_name" {
    type        = string
  description = "Resource group name"
}

variable "rg_location" {
  type    = string
  description = "Location of the resource group"
}

variable "k8s_cluster_name" {
 type    = map
  description = "Map with two different name for a group"
  default = { for x in ["k8s-production", "k8s-staging"] : x => x }
}

variable "acr_name" {
  type        = string
  description = "Container registry name"
}

variable "node_count" {
    type = number
    description = "Node amount in the cluster"
}