module "github" {
  count = var.fluxcd_enabled ? 1 : 0

  source             = "./modules/github"
  github_repository  = var.github_repository
  public_key_openssh = tls_private_key.flux.public_key_openssh
}
