module "secure_bucket" {
  source         = "./modules/secure_bucket"
  project_id     = var.project_id
  bucket_name    = var.bucket_name
  location       = var.location
  retention_days = var.retention_days
  kms_key        = var.kms_key
}

