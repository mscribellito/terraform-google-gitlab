resource "google_service_account" "gitlab" {
  project = var.project_id

  display_name = "GitLab"
  account_id   = var.name
}
