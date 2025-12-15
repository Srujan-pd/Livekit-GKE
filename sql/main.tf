terraform {
  required_version = ">=1.3"

  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {
    project = var.project_id
    region = var.region
}

resource "google_compute_network" "vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
}   

resource "google_compute_global_address" "private_ip_range" {
    name = "cloudsql-private-ip-range"
    purpose = "VPC-PEERING"
    address_type = "INTERNAL"
    prefix_length = 16
    network = google_compute_network.vpc.id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.vpc.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_range.name]

  depends_on = [
    google_project_service.servicenetworking
  ]
}
resource "google_project_service" "sqladmin" {
  service = "sqladmin.googleapis.com"
}

resource "google_project_service" "servicenetworking" {
  service = "servicenetworking.googleapis.com"
}

resource "google_sql_database_instance" "cloudsql" {
  name             = var.sql_instance_name
  region           = var.region
  database_version = "MYSQL_8_0"

  settings {
  tier = var.db_tier

  ip_configuration {
    ipv4_enabled    = false
    private_network = google_compute_network.vpc.id
  }

  backup_configuration {
    enabled = true
    binary_log_enabled  = true
  }

  availability_type = "REGIONAL"
}


  deletion_protection = false

  depends_on = [
    google_service_networking_connection.private_vpc_connection,
    google_project_service.sqladmin
  ]
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.cloudsql.name
}

resource "google_sql_user" "user" {
  name     = var.db_user
  instance = google_sql_database_instance.cloudsql.name
  password = var.db_password
}

output "cloudsql_private_ip" {
  value = google_sql_database_instance.cloudsql.private_ip_address
}
