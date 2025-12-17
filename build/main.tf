terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Artifact Registry Repository
resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region
  repository_id = var.repo_name
  description   = "Docker Artifact Registry"
  format        = "DOCKER"
}

resource "google_cloudbuild_trigger" "build_trigger" {
  name     = var.trigger_name
  location = var.region

  service_account = "projects/${var.project_id}/serviceAccounts/309524653590@cloudbuild.gserviceaccount.com"

  repository_event_config {
    repository = "projects/${var.project_id}/locations/${var.region}/connections/ci-github/repositories/PrimisDigital-repo-poc_devops"

    push {
      branch = "^main$"
    }
  }

  
  filename = "cloudbuild.yaml"
}

