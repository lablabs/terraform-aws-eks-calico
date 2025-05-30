# IMPORTANT: Add addon specific variables here
variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources."
  nullable    = false
}

variable "calico_kubernetes_provider" {
  type        = string
  default     = "EKS"
  description = "Set your cloud provider name for Calico"
}

variable "calico_cni_type" {
  type        = string
  default     = "AmazonVPC"
  description = "Set your cni type for Calico"
}
