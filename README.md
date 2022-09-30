# tf-gcp-org
This repo creates a new project in Google Cloud Platform.

## Requirements
1. GCP Account
2. Organization Setup
3. gcloud sdk
4. Terraform

## Login to gcloud
``` gcloud auth application-default login ```

## Terraform commands

terraform init - initialize a working directory and configure terraform files

``` terraform init ```

terraform plan - Creates a plan to view changes before applying

``` terraform plan -var="project_id=<project-id>" -var="project_name=<project-name>" -var="<folder-name>" -var="billing_account=<billing-account>" ```

terraform apply - Applies the planned changes

``` terraform apply -var="project_id=<project-id>" -var="project_name=<project-name>" -var="<folder-name>" -var="billing_account=<billing-account>" ```