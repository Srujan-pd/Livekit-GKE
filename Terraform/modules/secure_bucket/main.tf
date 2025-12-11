resource "google_storage_bucket" "this" {
  name                        = var.bucket_name
  location                    = var.location
  project                     = var.project_id
  uniform_bucket_level_access = true
  force_destroy               = false

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = var.retention_days
    }
  }

  dynamic "encryption" {
    for_each = var.kms_key == null ? [] : [var.kms_key]

    content {
      default_kms_key_name = encryption.value
    }
  }
}

