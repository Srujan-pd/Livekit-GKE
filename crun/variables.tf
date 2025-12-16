variable "project_id" {
  type        = string
}

variable "region" {
  type        = string
  default     = "us-central1"
}

variable "service_name" {
  type        = string
}

variable "container_image" {
  type        = string
}

variable "container_port" {
  type        = number
  default     = 8080
}

