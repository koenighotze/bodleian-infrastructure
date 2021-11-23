variable "region" {
  type    = string
  default = "europe-west1"
}

variable "zone" {
  type    = string
  default = "europe-west1-c"
}

variable "project_id" {
  type      = string
  sensitive = true
}

variable "codacy_api_token" {
  type      = string
  sensitive = true
}

variable "docker_registry_username" {
  type      = string
  sensitive = true
}

variable "docker_registry_token" {
  type      = string
  sensitive = true
}

variable "target_repository_name" {
  type = string
}
