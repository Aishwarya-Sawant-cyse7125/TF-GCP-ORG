provider "google" {
  region  = var.gcp_region
  credentials = file("${var.CREDENTIALS}")
}