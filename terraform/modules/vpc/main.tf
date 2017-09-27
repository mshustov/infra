resource "google_compute_firewall" "firewall_ssh" {
  name        = "default-allow-ssh"
  network     = "${var.network}"
  description = "Allow SSH access"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = "${var.source_ranges}"
}
