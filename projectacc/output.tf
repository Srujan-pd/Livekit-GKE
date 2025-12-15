output "project_id" {
  value       = google_project.this.project_id
}

output "project_number" {
  value       = google_project.this.number
}

output "service_account_email" {
  value       = google_service_account.runtime.email
}

output "service_account_unique_id" {
  value       = google_service_account.runtime.unique_id
}

