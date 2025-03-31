terraform {
  required_providers {
    aws = {
      source  = "terraform-providers/aws"
      version = "~> 5.93.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.19.0"
    }

    helm = {
      source  = "terraform-providers/helm"
      version = "~> 2.17.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.33.0"
    }

    flux = {
      source  = "fluxcd/flux"
      version = "~> 1.5.1"
    }

    github = {
      source  = "opentofu/github"
      version = "~> 6.6.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.3"
    }
  }

  required_version = ">= 1.9.0"
}
