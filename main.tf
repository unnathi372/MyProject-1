provider "google" {
  project = "project-2a69026d-3a4d-498f-ae2"
  region  = "asia-south1"
  zone    = "asia-south1-a"
}

resource "google_storage_bucket" "my_bucket" {
  name   = "project-2a69026d-3a4d-498f-ae2-terraform-bucket"
  project = "project-2a69026d-3a4d-498f-ae2"
  location   = "asia-south1"
  public_access_prevention = "enforced"
  uniform_bucket_level_access = true
}

output "bucket_url" {
  value = google_storage_bucket.my_bucket.self_link
}
