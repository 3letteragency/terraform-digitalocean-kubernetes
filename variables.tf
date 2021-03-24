variable "project" {
  type    = string
  default = ""
}

variable "create_project" {
  type    = bool
  default = false
}

variable "name" {
  type    = string
  default = "do-k8s"
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "auto_upgrade" {
  type    = bool
  default = true
}

variable "surge_upgrade" {
  type    = bool
  default = false
}

variable "vpc_uuid" {
  type    = string
  default = null
}

variable "k8s_version" {
  type    = string
  default = "1.20.2-do.0"
}

variable "k8s_version_prefix" {
  type    = string
  default = "1.20."
}

variable "node_pool_name" {
  type    = string
  default = "default-worker-pool"
}

variable "node_size" {
  type    = string
  default = "s-2vcpu-4gb"
}

variable "node_count" {
  type    = number
  default = 3
}

variable "auto_scale" {
  type    = bool
  default = false
}

variable "min_nodes" {
  type    = number
  default = 1
}

variable "max_nodes" {
  type    = number
  default = 5
}

variable "node_pool_labels" {
  type    = map(any)
  default = {}
}

variable "node_pool_tags" {
  type    = list(string)
  default = []
}

variable "cluster_tags" {
  type    = list(string)
  default = null
}
