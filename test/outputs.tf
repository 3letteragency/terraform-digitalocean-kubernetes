output "id" {
  value = module.test.id
}

output "cluster_subnet" {
  value = module.test.cluster_subnet
}

output "service_subnet" {
  value = module.test.service_subnet
}

output "ipv4_address" {
  value = module.test.ipv4_address
}

output "endpoint" {
  value = module.test.endpoint
}

output "status" {
  value = module.test.status
}

output "created_at" {
  value = module.test.created_at
}

output "updated_at" {
  value = module.test.updated_at
}

output "auto_upgrade" {
  value = module.test.auto_upgrade
}

output "kube_config" {
  value     = module.test.kube_config
  sensitive = true
}

output "node_pool" {
  value = module.test.node_pool
}
