variable "project" {
  description = "Google cloud project ID"
  default = "k8s-prom"
}

variable "region" {
  description = "Google Cloud region"
  default = "asia-south1"
}

variable "region_zone" {
  description = "Google Cloud region zone"
  default = "asia-south1-a"
}

variable "credentials_file_path" {
  description = "Path to service account JSON file"

}

variable "allow_tcp_ports" {
  description = "List of tcp ports to allow"
  default = ["80", "443", "31000"]
}

variable "fw_tag" {
  description = "list of tags on which rules should be applied"
  default = ["ss-demo", "ss-kubernetes"]
}