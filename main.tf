provider "google" {
  project = var.project_name
  region  = var.region_name
  zone    = var.zone_name
}

resource "google_storage_bucket" "my_bucket" {
  name   = var.bucket_name
  project = var.project_name
  location   = var.region_name
  public_access_prevention = var.bucket_public_access
  uniform_bucket_level_access = var.bucket_level_access
  versioning {
    enabled =  var.bucket_versioning
  }
  lifecycle_rule {
    action { type = "Delete" }
    condition { age = var.object_delete_age }
  }
}

