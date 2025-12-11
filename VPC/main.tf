terraform {
  required_version = ">= 1.4.0"

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

#VPS

resource "google_compute_network" "vpc" {
name	= "S_VPC"
auto_create_subnet = false
}

#Subnet

resource "google_compte_subnet" "subnet" {
name 	= "S_subnet"
region 	= "var.region"
network = google_compute_network.vpc.id
ip_cidr_range = var.cidr_range
}

#firewall

resource "google_compute_firewall" "allow_https" {
  name    = "allow-https-ingress"
  network = google_compute_network.vpc.name

  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["443"]   
  }

  source_ranges = ["0.0.0.0/0"]  
}


