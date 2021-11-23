locals {
  cicd_cloudrun_sa_roles = [ "roles/run.admin", "roles/iam.serviceAccountUser", "roles/storage.admin" ]
}

resource "google_service_account" "cicd_cloudrun_sa" {
  project      = var.project_id  
  account_id   = "cicd-cloudrun-sa-id"
  display_name = "Service Account for CICD actions related to cloud run"
}

resource "google_project_iam_member" "cicd_cloudrun_sa_iam_member" {
  for_each = toset(local.cicd_cloudrun_sa_roles)

  role   = each.value
  member = "serviceAccount:${google_service_account.cicd_cloudrun_sa.email}"
}

resource "google_service_account_key" "cicd_cloudrun_sa_key" {
  service_account_id = google_service_account.cicd_cloudrun_sa.name
}

output "service_account_name" {
  value = google_service_account.cicd_cloudrun_sa.name
}
