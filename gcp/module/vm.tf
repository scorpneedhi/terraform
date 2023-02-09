resource "google_compute_instance" "webvm" {
  name         = var.google_compute_instance_name
  machine_type = var.google_compute_instance_machine_type
  zone = var.google_compute_instance_zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.google_compute_instance_boot_disk_image
    }
  }

  network_interface {
    network = var.google_compute_instance_network
    access_config {}
  }

}