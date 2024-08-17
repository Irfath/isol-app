
resource "google_compute_instance" "instnce_tf" {
  name                      = "isol-app1"
  zone                      = var.zone 
  machine_type              = "e2-micro" 
  allow_stopping_for_update = true

  network_interface {
    network    = module.vpc.name
    subnetwork = module.subnet_app.subnet_self_link

    access_config { 
    }

  }

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-9-stretch-v20210817"
      size  = 20
    }
  }

  labels = {
    "env" = "isol"
  }
}
