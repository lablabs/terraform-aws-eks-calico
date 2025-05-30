/**
 * # AWS EKS Calico Addon Terraform module
 *
 * A Terraform module to deploy the [Calico](https://www.tigera.io/project-calico/) addon on Amazon EKS cluster.
 *
 * [![Terraform validate](https://github.com/lablabs/terraform-aws-eks-calico/actions/workflows/validate.yaml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-calico/actions/workflows/validate.yaml)
 * [![pre-commit](https://github.com/lablabs/terraform-aws-eks-calico/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-calico/actions/workflows/pre-commit.yaml)
 *
 */

locals {
  addon = {
    name      = "calico"
    namespace = "kube-system"

    helm_chart_name    = "tigera-operator"
    helm_chart_version = "3.29.4"
    helm_repo_url      = "https://docs.trigera.io/calico/charts"
  }

  addon_irsa = {
    (local.addon.name) = {
    }
  }

  addon_values = yamlencode({
    installation = {
      kubernetesProvider = var.kubernetes_provider
    }
  })

  addon_depends_on = []
}
