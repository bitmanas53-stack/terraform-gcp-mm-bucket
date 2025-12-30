provider "google" {
  project = var.project_id
}

module "mm-bucket" {
  source      = "app.terraform.io/ManasOrgTerraform/mm-bucket/google"
  version     = "0.0.1"
  bucket_name = var.bucket_name
  project_id  = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.region
  force_destroy = true
}

