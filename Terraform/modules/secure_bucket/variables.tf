variable "project_id" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "location" {
  type    = string
  default = "US"
}

variable "retention_days" {
  type    = number
  default = 30
}

variable "kms_key" {
  type        = string
  description = "KMS key self-link or null"
  default     = null
}

