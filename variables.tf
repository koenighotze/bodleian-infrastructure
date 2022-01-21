variable "region" {
  type        = string
  default     = "europe-west1"
  description = "The GCP region"
}

variable "zone" {
  type        = string
  default     = "europe-west1-c"
  description = "The GCP zone"
}

variable "project_id" {
  type        = string
  sensitive   = true
  description = "The GCP project id"
}

variable "codacy_api_token" {
  type        = string
  sensitive   = true
  description = "The API token for uploading coverage data"
}

variable "docker_registry_username" {
  type        = string
  sensitive   = true
  description = "The username for uploading images"
}

variable "docker_registry_token" {
  type        = string
  sensitive   = true
  description = "The API token for uploading images"
}
