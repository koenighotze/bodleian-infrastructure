terraform {
  required_version = "1.0.11"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.52.0"
    }

    github = {
      source  = "integrations/github"
      version = ">= 4.0"
    }
  }
}
