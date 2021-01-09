provider "helm" {
  version = "1.3.2"
}
module "eks-jx" {
  source          = "jenkins-x/eks-jx/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  region          = var.region 
  vault_user      = var.vault_user
  is_jx2          = false
  jx_git_url      = var.jx_git_url
  jx_bot_username = var.jx_bot_username
  jx_bot_token    = var.jx_bot_token
  force_destroy   = var.force_destroy
  node_machine_type  = var.node_machine_type
  desired_node_count = var.desired_node_count
  min_node_count     = var.min_node_count
  max_node_count     = var.max_node_count
}
