
module "instance_provisioning" {
  source      = "../module"

  google_compute_instance_name = var.google_compute_instance_name

  google_compute_instance_machine_type = var.google_compute_instance_machine_type

  google_compute_instance_zone = var.google_compute_instance_zone

  google_compute_disk_image = var.google_compute_disk_image

  google_compute_instance_boot_disk_image = var.google_compute_instance_boot_disk_image

  google_compute_instance_network = var.google_compute_instance_network

  google_compute_disk_name = var.google_compute_disk_name

  google_compute_disk_physical_block_size_bytes = var.google_compute_disk_physical_block_size_bytes
}