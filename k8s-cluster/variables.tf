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

variable "worker_count" {
  description = "Number of worker nodes"
  default = 1
}

variable "worker_size" {
  description = "Size of worker nodes"
  default = "n1-standard-1"
}

variable "additional_zones" {
  default = ["asia-south1-c", "asia-south1-b"]
}

variable "master_user" {
  description = "Username for Cluster Master"
  default = "admin"
}

variable "master_pass" {
  description = "Password for Cluster Master"
  default = "s3cret"
}