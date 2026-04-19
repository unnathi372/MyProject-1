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

resource "google_compute_network" "my_vpc" {
  name = var.vpc_name
  routing_mode = var.vpc_routing
  auto_create_subnetworks = false
  enable_ula_internal_ipv6 = true
}

resource "google_compute_subnetwork" "public_subnet" {
  name = var.public_subnet_name
  network = var.vpc_name
  region = var.region_name
  allow_subnet_cidr_routes_overlap = var.subnet_cidr_overlap
  private_ip_google_access = false
  private_ipv6_google_access = var.subnet_ipv6_enable_access
  stack_type = var.dual_stack
  ipv6_access_type = "INTERNAL"
  ip_cidr_range = var.public_subnet_pri_cidr
  purpose = var.subnet_purpose
  secondary_ip_range {
    range_name = "public-service-range"
    ip_cidr_range = var.public_subnet_sec_cidr
  }
}

resource "google_compute_subnetwork" "private_subnet" {
  name = var.private_subnet_name
  network = var.vpc_name
  region = var.region_name
  allow_subnet_cidr_routes_overlap = var.subnet_cidr_overlap
  private_ip_google_access = true
  private_ipv6_google_access = var.subnet_ipv6_disable_access
  stack_type = var.ipv4_stack
  ip_cidr_range = var.private_subnet_pri_cidr
  purpose = var.subnet_purpose
  secondary_ip_range {
    range_name = "private-service-range"
    ip_cidr_range = var.private_subnet_sec_cidr
  }
}
