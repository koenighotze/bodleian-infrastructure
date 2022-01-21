locals {
  cicd_cloudrun_sa_roles = ["roles/run.admin", "roles/storage.admin", "roles/iam.serviceAccountUser"]
}

resource "google_service_account" "cicd_cloudrun_sa" {
  project      = var.gcp_project_id
  account_id   = "cicd-sa-id-${var.name}"
  display_name = "Service Account for CICD actions related to cloud run"
}

resource "google_project_iam_member" "cicd_cloudrun_sa_iam_member" {
  for_each = toset(local.cicd_cloudrun_sa_roles)

  role   = each.value
  member = "cicd-sa-id-${var.name}:${google_service_account.cicd_cloudrun_sa.email}"
}

resource "google_service_account_key" "cicd_cloudrun_sa_key" {
  service_account_id = google_service_account.cicd_cloudrun_sa.name
}

