provider "google" {
    project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "cecil_test_one" {
  name         = "cecil-test-one"
  machine_type = "e2-medium"
  zone         = var.zone
  

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_compute_instance" "cecil_test_two" {
  name         = "cecil-test-two"
  machine_type = "e2-medium"
  zone         = var.zone
  

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}



