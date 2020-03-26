# calico
variable "enabled" {
  type = bool
}

variable "calico_version" {
  type    = string
  default = "v3.8.1"
}

variable "calico_image" {
  type    = string
  default = "quay.io/calico/node"
}

variable "typha_image" {
  type    = string
  default = "quay.io/calico/typha"
}

variable "service_account_create" {
  type    = bool
  default = true
}

# Helm
variable "helm_chart_name" {
  default = "aws-calico"
}

variable "helm_chart_version" {
  default = "0.2.0"
}

variable "helm_release_name" {
  default = "aws-calico"
}

variable "helm_repo_name" {
  default = "stable"
}

variable "helm_repo_url" {
  default = "https://lablabs.github.io/eks-charts/"
}

# K8S
variable "k8s_namespace" {
  default     = "kube-system"
  description = "The k8s namespace in which the external-dns service account has been created"
}

#dependence variable binds all AWS resources allocated by
#this module. Dependent modules reference this variable
variable "mod_dependency" {
  default = null
}
