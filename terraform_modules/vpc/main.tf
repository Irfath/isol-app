resource "google_compute_network" "vpc_tf" {
  name                    = var.vpc_display_name
  auto_create_subnetworks = false
}

