data "github_repository" "target" {
  full_name = var.target_repository_name
}

output "repository" {
  value = data.github_repository.target.name
}