variable "zone" {
  type = string
}

variable "net" {
  type = string
}

variable "subnet" {
  type = string
}

variable "cl_name" {
  type    = string
  default = "bcktv2"
}

variable "nodes" {
  type    = number
  default = 2
}
