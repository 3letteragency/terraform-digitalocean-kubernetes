data "digitalocean_kubernetes_versions" "this" {
  count          = var.auto_upgrade ? 1 : 0
  version_prefix = var.k8s_version_prefix
}

resource "digitalocean_kubernetes_cluster" "this" {
  name          = var.name
  region        = var.region
  version       = var.auto_upgrade ? data.digitalocean_kubernetes_versions.this[0].latest_version : var.k8s_version
  auto_upgrade  = var.auto_upgrade
  surge_upgrade = var.surge_upgrade
  vpc_uuid      = var.vpc_uuid

  node_pool {
    name       = var.node_pool_name
    size       = var.node_size
    node_count = var.node_count
    auto_scale = var.auto_scale
    min_nodes  = var.min_nodes
    max_nodes  = var.max_nodes
    labels     = var.node_pool_labels
    tags       = var.node_pool_tags
  }
}
