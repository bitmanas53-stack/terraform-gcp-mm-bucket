provider "google" {
  project = var.project_id
}

module "mm-bucket" {
  source      = "app.terraform.io/ManasOrgTerraform/mm-bucket/google"
  version     = "0.0.1"
  bucket_name = "${var.project_id}-${var.bucket_name}"
  project_id  = var.project_id
  region      = var.region
}

## not required
# resource "google_storage_bucket" "bucket" {
#   name                        = "${var.project_id}-${var.bucket_name}"
#   location                    = var.region
#   uniform_bucket_level_access = true
#   project                     = var.project_id
#   force_destroy               = true
# }

