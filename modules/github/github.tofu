resource "github_repository_deploy_key" "this" {
  title      = "FluxCD"
  repository = var.github_repository
  key        = var.public_key_openssh
  read_only  = "false"
}
