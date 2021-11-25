data "github_repository" "bodleian" {
  full_name = var.target_repository_name
}

output "repository" {
  value = data.github_repository.bodleian.name
}