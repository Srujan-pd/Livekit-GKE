resource "google_compute_firewall" "https" {
  name    = "allow-https"
  network = var.vpc_name

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

