resource "google_compute_network" "vpc_network" {
  name                    = var.net_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_subnetwork" {
  name = var.sub_name
  region = var.region
  network = google_compute_network.vpc_network.id
  ip_cidr_range = var.ip_range
}


