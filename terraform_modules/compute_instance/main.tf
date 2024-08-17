resource "google_compute_instance" "instnce_tf" {
  name                      = var.instance_name
  zone                      = var.zone
  machine_type              = var.machine_type
  allow_stopping_for_update = true

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

  boot_disk {
    initialize_params {
      image = var.image_name
      size  = var.disk_size
    }
  }

  labels = {
    "env" = var.label_env
  }
}
