variable "region" {
  type        = string
  default     = "us-central1"
}

variable "project_name" {
  type        = string
}

variable "project_id" {
  type        = string
}

variable "billing_account_id" {
  type        = string
}

variable "folder_id" {
  type        = string
  default     = null
}

variable "organization_id" {
  type        = string
}

variable "service_account_id" {
  type        = string
  default     = "app-runtime"
}

variable "service_account_display_name" {
  type        = string
  default     = "App Runtime Service Account"
}

variable "service_account_roles" {
  type        = set(string)

  default = [
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/artifactregistry.reader",
  ]
}

