variable "project_id" {}
variable "region" {
  default = "us-central1"
}

variable "repo_name" {
  default = "app-repo"
}

variable "trigger_name" {
  default = "app-build-trigger"
}

variable "github_owner" {}
variable "github_repo" {}

