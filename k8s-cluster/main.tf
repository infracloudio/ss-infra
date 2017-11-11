resource "google_container_cluster" "primary" {
  name               = "ss-k8s"
  zone               = "${var.region_zone}"
  initial_node_count = "${var.worker_count}"

  additional_zones = "${var.additional_zones}"
  logging_service = "none"
  monitoring_service = "none"
  master_auth {
    password = "${var.master_pass}"
    username = "${var.master_user}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels {
      applicaion = "ss-demo"
    }
    machine_type = "${var.worker_size}"

    tags = ["ss-demo", "ss-kubernetes"]
  }
}

