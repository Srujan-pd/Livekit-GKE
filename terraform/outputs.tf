output "cluster_name" {
  value = google_container_cluster.livekit.name
}

output "cluster_region" {
  value = var.region
}

output "gke_service_account" {
  value = google_service_account.gke_sa.email
}

