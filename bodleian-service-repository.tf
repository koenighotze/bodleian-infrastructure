module "bodleian-service-repository" {
  source = "./modules/repository"

  target_repository_name   = "koenighotze/bodleian"
  codacy_api_token         = var.codacy_api_token
  docker_registry_username = var.docker_registry_username
  docker_registry_token    = var.docker_registry_token
  gcp_project_id           = var.project_id
  gcp_sa_private_key       = google_service_account_key.cicd_cloudrun_sa_key.private_key
}