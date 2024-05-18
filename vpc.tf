resource "google_compute_address" "gitlab" {
  project = var.project_id

  name   = var.name
  region = var.region
}
