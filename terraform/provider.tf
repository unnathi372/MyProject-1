terraform {
  required_version = ">=1.14"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=7.0"
    }
  }
backend "gcs" { }
}

provider "google" {
  project = var.project_name
  region  = var.region_name
  zone    = var.zone_name
}

