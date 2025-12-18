resource "google_cloudbuild_trigger" "trigger" {
  name = "build-trigger"

  github {
    owner = "example"
    name  = "example"
    push {
      branch = "main"
    }
  }

  filename = var.cloudbuild_yaml
}

