resource "google_container_cluster" "mycluster" {
  name               = var.cl_name
  location           = var.zone
  initial_node_count = var.nodes
  network            = var.net
  subnetwork         = var.subnet
}
