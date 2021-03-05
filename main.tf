/**
 * Copyright 2020 Sabre
 *
 * Proprietary - All rights reserved
 */

module "gke" {
  source      = "https://gcp.repository.sabre.com/repository/cloud-templates-staging/com/sabre/ngp-sre/gcp-sabre-gke-cluster/v0.0.2-1-g0b37a0e/gcp-sabre-gke-cluster-v0.0.2-1-g0b37a0e.zip"
  project_id  = "sab-dev-teo-eng-8763"
  regionality = "us-central1"
  environment = "dev"

  cluster_name   = "eng-01"
  master_cidr    = var.master_cidr
  business_unit  = "teo"
  owner_email    = "chris_liles__sabre.com"
  group_email    = "ngp_sre__sabre.com"
  kube_version   = var.kube_version
  node_pool_list = var.node_pool_list
}

# variable "master_cidr" {
#   type    = string
#   default = "10.128.224.16/28"
# }

# variable "kube_version" {
#   type    = string
#   default = "1.17.12-gke.1501"
# }

# variable "node_pool_list" {
#   type = list(map(string))
#   default = [
#     {
#       name         = "general-pool"
#       machine_type = "n2-standard-2"
#       min_count    = 1
#       max_count    = 50
#       max_surge    = 10
#     }
#   ]
# }
