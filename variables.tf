variable "name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "deployment_strategy" {
  type    = string
  default = "Recreate"
}

variable "image" {
  type = string
}

variable "port_name" {
  type    = string
  default = "port"
}

variable "port" {
  type    = string
  default = null
}

variable "port_protocol" {
  type    = string
  default = "TCP"
}

variable "svc_type" {
  type    = string
  default = "ClusterIP"
}

variable "config_map" {
  type    = string
  default = null
}