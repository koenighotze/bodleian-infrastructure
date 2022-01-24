module "bodleian_frontend_repository_deployer_sa" {
  source = "./modules/deployer-service-account"

  name           = "bodleian-frontend"
  gcp_project_id = var.project_id
}


module "bodleian_frontend_repository" {
  source = "./modules/repository"

  target_repository_name   = "koenighotze/bodleian-frontend"
  codacy_api_token         = var.codacy_api_token
  docker_registry_username = var.docker_registry_username
  docker_registry_token    = var.docker_registry_token
  gcp_project_id           = var.project_id
  gcp_sa_private_key       = module.bodleian_frontend_repository_deployer_sa.service_account_private_key.private_key
}