apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: #CLUSTER_CA#
    server: https://#CLUSTER_EP#
  name: #CLUSTER_NAME#
contexts:
- context:
    cluster: #CLUSTER_NAME#
    user: #CLUSTER_USER#
  name: #CLUSTER_USER#@#CLUSTER_NAME#
current-context: #CLUSTER_USER#@#CLUSTER_NAME#
kind: Config
preferences: {}
users:
- name: #CLUSTER_USER#
  user:
    client-certificate-data: #CLIENT_CERT#
    client-key-data: #CLIENT_KEY#
