project_id          = "srujan-prim"
project_name        = "srujan-project-prim"
bootstrap_project   = "true-shoreline-469411-a3"
region              = "us-central1"

service_account_id = "demo-sa"

iam_roles = [
  "roles/logging.logWriter",
  "roles/monitoring.metricWriter",
  "roles/storage.objectViewer"
]

