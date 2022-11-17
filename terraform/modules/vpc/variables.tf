variable "region" {
  type = string
}

variable "net_name" {
  type    = string
  default = "net2"
}

variable "sub_name" {
  type    = string
  default = "clst-sub"
}

variable "ip_range" {
  type = string
  default = "10.0.24.0/24"
}

