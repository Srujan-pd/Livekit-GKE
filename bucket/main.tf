terraform {
  required_version = ">= 1.3.0"


  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}


provider "google" {
  project = var.project_id
  region  = var.location
}


resource "google_storage_bucket" "secure_bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class


  uniform_bucket_level_access = true


  public_access_prevention = "enforced"


  versioning {
    enabled = true
  }


  labels = var.labels
}
