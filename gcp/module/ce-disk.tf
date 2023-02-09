resource "google_compute_disk" "webdisk" {
  name  = var.google_compute_disk_name
  zone  = var.google_compute_instance_zone
  image = var.google_compute_disk_image
  physical_block_size_bytes = var.google_compute_disk_physical_block_size_bytes
}

resource "google_compute_attached_disk" "webdisk_att" {
  disk     = google_compute_disk.webdisk.id
  instance = google_compute_instance.webvm.id
}