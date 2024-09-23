resource "google_compute_instance" "vm_1" {
  name         = "vm-instance-1"
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.subnet_1.id
    access_config {
      nat_ip = google_compute_address.vm_1_ip.address
    }
  }

  tags = ["http-server"]
}

resource "google_compute_instance" "vm_2" {
  name         = "vm-instance-2"
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.subnet_2.id
    access_config {
      nat_ip = google_compute_address.vm_2_ip.address
    }
  }

  tags = ["http-server"]
}

resource "google_compute_address" "vm_1_ip" {
  name   = "vm1-static-ip"
  region = var.region
}

resource "google_compute_address" "vm_2_ip" {
  name   = "vm2-static-ip"
  region = var.region
}
