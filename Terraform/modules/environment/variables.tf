variable "rg_name" {
 type    = string
  description = "Resource group name"
}

variable "scope" {
  type    = string
  description = "ID of acr"
}

variable "k8s_cluster_name" {
  type        = string
  description = "Kubernetes cluster name"
}

variable "node_count" {
    type = number
    description = "Node amount in the cluster"
}