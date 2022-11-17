resource "google_compute_disk" "mydisk" {
  for_each = var.nfs_servers
  name     = each.key
  type     = var.d_type
  zone     = var.zone
  size     = var.disk_size
}
