resource "google_project" "my_project" {
  name        = var.project_name
  project_id  = var.project_id
  # org_id      = "41268643997"
  folder_id  = google_folder.project_1.name
  billing_account = var.billing_account
}
resource "google_folder" "project_1" {
  display_name = var.folder_name
  parent       = "organizations/${var.gcp_organization}"
}

resource "google_project_service" "gcp_service" {
  project = "${google_project.my_project.project_id}"
  service = "compute.googleapis.com"
  disable_on_destroy = false
}

resource "google_organization_policy" "skip_default_network_constraint" {
  org_id = var.gcp_organization
  constraint = "compute.skipDefaultNetworkCreation"
  boolean_policy {
    enforced = true
  }
}