output "k8s_endpoint" {
  value = "${google_container_cluster.primary.endpoint}"
}

output "k8s_client_cert" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "k8s_client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "k8s_ca_cert" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}

output "k8s_cluster_name" {
  value = "${google_container_cluster.primary.name}"
}

output "k8s_cluster_user" {
  value = "${google_container_cluster.primary.master_auth.0.username}"
}