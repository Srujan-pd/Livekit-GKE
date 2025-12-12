provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_firewall" "internal_ssh" {
  name    = "internal-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.allowed_internal_cidrs
}


resource "google_compute_instance" "private_vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnet_name  
   
  }

  metadata = {
    enable-oslogin = "TRUE"
  }

  service_account {
    scopes = ["cloud-platform"]
  }
}
