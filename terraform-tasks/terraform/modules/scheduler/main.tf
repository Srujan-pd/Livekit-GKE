resource "google_cloud_scheduler_job" "job" {
  name     = var.scheduler_name
  schedule = var.schedule

  http_target {
    uri         = var.target_url
    http_method = "GET"
  }
}

