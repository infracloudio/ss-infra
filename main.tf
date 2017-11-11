module "ss-k8s" {
  source = "./k8s-cluster"
  credentials_file_path = "k8s-cluster/credentials/terraform.json"

}

module "ss-firewall" {
  source = "./gcp-firewall"
  credentials_file_path = "k8s-cluster/credentials/terraform.json"
  allow_tcp_ports = ["80", "443","31000"]
  fw_tag = ["ss-demo", "ss-kubernetes"]
}

resource "null_resource" "generate_kubeconfig" {
  provisioner "local-exec" {
    command = "sed 's/#CLUSTER_EP#/${module.ss-k8s.k8s_endpoint}/g; s/#CLUSTER_CA#/${module.ss-k8s.k8s_ca_cert}/g; s/#CLUSTER_USER#/${module.ss-k8s.k8s_cluster_user}/g; s/#CLUSTER_NAME#/${module.ss-k8s.k8s_cluster_name}/g; s/#CLIENT_CERT#/${module.ss-k8s.k8s_client_cert}/g; s/#CLIENT_KEY#/${module.ss-k8s.k8s_client_key}/g' admin.conf.tpl > admin.conf"
  }
}