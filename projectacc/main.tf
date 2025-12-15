terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {
  region = var.region
}

resource "google_project" "new" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account_id

folder_id = var.folder_id != null ? var.folder_id : null
  org_id    = var.folder_id == null ? var.organization_id : null
}

resource "google_service_account" "runtime" {
  project      = google_project.new.project_id
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_project_iam_member" "runtime_roles" {
  for_each = toset(var.service_account_roles)

  project = google_project.new.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.runtime.email}"
}
