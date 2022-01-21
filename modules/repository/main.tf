resource "github_actions_secret" "cicd_cloudrun_sa_secret" {
  repository      = data.github_repository.target.id
  secret_name     = "GCP_SA_KEY"
  plaintext_value = var.gcp_sa_private_key
}

resource "github_actions_secret" "gcp_projectid_secret" {
  repository      = data.github_repository.target.id
  secret_name     = "GCP_PROJECT_ID"
  plaintext_value = var.gcp_project_id
}

resource "github_actions_secret" "docker_registry_token" {
  repository      = data.github_repository.target.id
  secret_name     = "DOCKER_REGISTRY_TOKEN"
  plaintext_value = var.docker_registry_token
}

resource "github_actions_secret" "docker_registry_username" {
  repository      = data.github_repository.target.id
  secret_name     = "DOCKER_REGISTRY_USERNAME"
  plaintext_value = var.docker_registry_username
}

resource "github_actions_secret" "codacy_api_token" {
  repository      = data.github_repository.target.id
  secret_name     = "CODACY_API_TOKEN"
  plaintext_value = var.codacy_api_token
}
