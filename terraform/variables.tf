variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "Azure Container Registry name (globally unique, lowercase alphanumeric)"
  type        = string
}

variable "aks_cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "node_count" {
  description = "Node count for AKS default node pool"
  type        = number
  default     = 1
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}
