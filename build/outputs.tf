output "artifact_registry_repo" {
  value = google_artifact_registry_repository.docker_repo.repository_id
}

output "cloudbuild_trigger" {
  value = google_cloudbuild_trigger.build_trigger.name
}

