variable "gcp_region" {
  type    = string
}
variable "gcp_organization" {
  type    = string
  default = "41268643997"
}
variable "CREDENTIALS" {
  type = string
}
variable "project_id" {
  type   = string
  default = "project-tf-gcp-85776"
}
variable "project_name" {
  type   = string
  default = "project-tf-gcp"
}
variable "folder_name" {
  type   = string
  default = "project_1"
}
variable "billing_account" {
  type   = string
  default = "12345"
}