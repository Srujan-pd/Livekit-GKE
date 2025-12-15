variable "project_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "bootstrap_project" {
  type = string
  description = "Existing project used by Terraform to create new projects"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "service_account_id" {
  type = string
}

variable "iam_roles" {
  type        = list(string)
  description = "Least privilege roles for the service account"
}

