terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.93.0"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.19.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.36.0"
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

  backend "s3" {
    bucket       = "${var.project}-infra"
    key          = "statefile"
    region       = var.aws_region
    use_lockfile = true
  }

  required_version = ">= 1.9.0"
}
