resource "google_compute_subnetwork" "subnet_tf_id" {
  name                     = var.subnet_display_name
  ip_cidr_range            = var.sn_cidr_range
  region                   = var.region
  network                  = var.name
  private_ip_google_access = true
}
