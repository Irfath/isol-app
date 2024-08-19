resource "google_container_cluster" "gke_cluster" {
  name     = "isol-gke-cluster"
  location = var.region

  # Set the number of nodes explicitly
  initial_node_count = 1

  network    = module.vpc.name
  subnetwork = module.subnet_gke.subnet_self_link

  node_config {
    machine_type = "e2-small"  # Adjust the machine type as needed

    # Optional: Reduce the disk size if needed
    disk_size_gb = 10  # Reducing from default 100GB to 10GB

    # Optional: Use a standard persistent disk instead of SSD to reduce cost and resource usage
    disk_type = "pd-standard"
  }

  # Update deletion_protection to false
  deletion_protection = false

 
}
