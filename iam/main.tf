terraform {
  required_version = ">= 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.bootstrap_project  
  region  = var.region
}

provider "google-beta" {
  project = var.bootstrap_project
  region  = var.region
}

resource "google_project" "project" {
  project_id      = var.project_id
  name            = var.project_name
}

resource "google_project_service" "required_apis" {
  for_each = toset([
    "iam.googleapis.com",
    "compute.googleapis.com",
    "storage.googleapis.com",
    "run.googleapis.com",
    "cloudresourcemanager.googleapis.com"
  ])

  project = google_project.project.project_id
  service = each.key
  disable_on_destroy = false
}

resource "google_service_account" "sa" {
  project      = google_project.project.project_id
  account_id   = var.service_account_id
  display_name = "Least privilege service account"
}

resource "google_project_iam_member" "sa_roles" {
  for_each = toset(var.iam_roles)

  project = google_project.project.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.sa.email}"
}
