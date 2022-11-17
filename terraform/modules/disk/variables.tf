variable "zone" {
  type = string
}

variable "nfs_servers" {
  type    = set(string)
  default = ["db1", "app1"]
}

variable "disk_size" {
  type    = number
  default = 10
}

variable "d_type" {
  type    = string
  default = "pd-standard"
}
