variable "project_id" {
  type        = string
  description = "GCP Prohect ID"
  default     = "tf-lab-dev-001"
}

variable "bucket_name" {
  type    = string
  default = "mm-bucket"
}

variable "region" {
  type    = string
  default = "us-central1"
}
