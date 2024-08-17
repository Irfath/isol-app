

module "vpc" {
  source = "../terraform_modules/vpc/"
  vpc_display_name = var.vpc_display_name
  
}

resource "google_compute_route" "default_to_internet" {
  name             = "default-internet-gateway"
  dest_range       = "0.0.0.0/0"
  network          = module.vpc.name
  next_hop_gateway = "default-internet-gateway"
  priority         = 1000
  description      = "Default route to the Internet."
}

resource "google_compute_router" "router" {
  name    = "router"
  region  = var.region
  network = module.vpc.name
}


module "subnet_app" {
  source = "../terraform_modules/subnet"
  subnet_display_name = var.sn_display_name1
  sn_cidr_range = var.sn_ip_range1
  region = var.region
  name = module.vpc.name

}


module "subnet_gke" {
  source = "../terraform_modules/subnet"
  subnet_display_name = var.sn_display_name2
  sn_cidr_range = var.sn_ip_range2
  region = var.region
  name = module.vpc.name
}

