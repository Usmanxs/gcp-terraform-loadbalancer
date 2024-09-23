resource "google_compute_network" "vpc_network" {
  name                    = "app-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_1" {
  name          = "subnet-1"
  ip_cidr_range = var.subnet_cidr_1
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "subnet_2" {
  name          = "subnet-2"
  ip_cidr_range = var.subnet_cidr_2
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
