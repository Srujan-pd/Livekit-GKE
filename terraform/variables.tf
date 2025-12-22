variable "project_id" {
  description = "GCP project ID"
}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

variable "cluster_name" {
  default = "livekit-gke"
}

variable "node_pool_name" {
  default = "primary-pool"
}

variable "node_machine_type" {
  default = "e2-standard-4"
}

variable "min_nodes" {
  default = 1
}

variable "max_nodes" {
  default = 3
}

