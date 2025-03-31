provider "aws" {
  region = var.aws_region
}

provider "github" {
  owner = var.github_org
  token = var.github_token
}

provider "null" {}
