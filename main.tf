provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_subnetwork" "subnet_one" {
  name          = var.subnet_one_name
  region        = var.region
  network       = "default"
  ip_cidr_range = var.subnet_one_cidr
}

resource "google_compute_subnetwork" "subnet_two" {
  name          = var.subnet_two_name
  region        = var.region
  network       = "default"
  ip_cidr_range = var.subnet_two_cidr
}

resource "google_compute_instance" "instance_one" {
  name         = var.instance_one_name
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_one.name
    access_config {}
  }
}

resource "google_compute_instance" "instance_two" {
  name         = var.instance_two_name
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_two.name
    access_config {}
  }
}
