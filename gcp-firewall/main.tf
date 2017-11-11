provider "google" {
  credentials = "${file("${var.credentials_file_path}")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

resource "google_compute_firewall" "default" {
  name    = "ss-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "31000"]
  }

  source_tags = ["web"]
}