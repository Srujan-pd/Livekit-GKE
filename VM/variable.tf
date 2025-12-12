variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "vm_name" {
  type    = string
  default = "private-vm"
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-12"
}

variable "subnet_name" {
  type = string
}

variable "allowed_internal_cidrs" {
  type = list(string)
}
