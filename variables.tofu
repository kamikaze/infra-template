
variable "organization" {
  type     = string
  default  = "Bixority"
  nullable = false

  validation {
    condition     = length(var.organization) >= 3
    error_message = "Organization name must be at least 3 characters long."
  }
}

variable "project" {
  type     = string
  default  = "infra-template"
  nullable = false

  validation {
    condition     = length(var.project) >= 3
    error_message = "Project name must be at least 3 characters long."
  }
}

variable "admin_ssh_public_key_name" {
  type     = string
  default  = "admin-ssh-key"
  nullable = false

  validation {
    condition     = length(var.admin_ssh_public_key_name) >= 3
    error_message = "Admin ssh key name must be at least 3 characters long."
  }
}

variable "admin_ssh_public_key" {
  type     = string
  default  = ""
  nullable = false
}

variable "db_username" {
  type        = string
  nullable    = false
  default     = "dev"
  description = "Username for database"
}

# AWS

variable "aws_access_key_id" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "aws_secret_access_key" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "aws_region" {
  type     = string
  default  = "eu-north-1"
  nullable = false
}

# GitHub

variable "github_token" {
  sensitive = true
  type      = string
}

variable "github_org" {
  type = string
}

variable "github_repository" {
  type    = string
  default = "infra"
}

variable "git_infra_repo_url" {
  type     = string
  default  = ""
  nullable = false

  validation {
    condition     = length(var.git_infra_repo_url) >= 6
    error_message = "Git repository URL must be at least 6 characters long."
  }
}

# FluxCD

variable "fluxcd_enabled" {
  type    = bool
  default = true
}

variable "flux_git_infra_target_path_dev" {
  type     = string
  default  = "fluxcd/clusters/dev"
  nullable = false

  validation {
    condition     = length(var.flux_git_infra_target_path_dev) >= 3
    error_message = "Git target path must be at least 3 characters long."
  }
}

variable "flux_git_infra_target_path_prod" {
  type     = string
  default  = "fluxcd/clusters/prod"
  nullable = false

  validation {
    condition     = length(var.flux_git_infra_target_path_prod) >= 3
    error_message = "Git target path must be at least 3 characters long."
  }
}

variable "flux_git_infra_branch" {
  type     = string
  default  = "main"
  nullable = false

  validation {
    condition     = length(var.flux_git_infra_branch) >= 1
    error_message = "Git branch name must be at least 1 characters long."
  }
}
