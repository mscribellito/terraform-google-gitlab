data "google_compute_image" "gitlab" {
  project = "ubuntu-os-cloud"

  family = "ubuntu-minimal-2204-lts"
}

data "google_compute_zones" "available" {
  project = var.project_id

  region = var.region
}

resource "google_compute_instance" "gitlab" {
  project = var.project_id

  name         = var.name
  zone         = data.google_compute_zones.available.names[0]
  machine_type = var.machine_type

  boot_disk {
    device_name = var.name
    auto_delete = false
    initialize_params {
      type  = var.disk_type
      size  = var.disk_size
      image = data.google_compute_image.gitlab.self_link
    }
  }

  service_account {
    email  = google_service_account.gitlab.email
    scopes = ["cloud-platform"]
  }

  tags = [var.name]

  network_interface {
    subnetwork = var.subnetwork
    access_config {
      nat_ip = google_compute_address.gitlab.address
    }
  }

  shielded_instance_config {
    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }

  deletion_protection = true

  metadata = {
    startup-script = templatefile("files/gitlab.sh",
      {
        external_url = "https://${var.name}.${var.domain}"
      }
    )
  }

  lifecycle {
    ignore_changes = [
      metadata["ssh-keys"]
    ]
  }
}
