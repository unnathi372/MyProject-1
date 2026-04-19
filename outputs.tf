output "bucket_url" {
  value = google_storage_bucket.my_bucket.self_link
  description = "GCS bucket link"
}

output "vpc_url" {
  value = google_compute_network.my_vpc.self_link
  description = "Compute network link"
}

output "private_subnet_url" {
  value = google_compute_subnetwork.private_subnet.self_link
  description = "Private subnet link"
}

output "private_subnet_state" {
  value = google_compute_subnetwork.private_subnet.state
  description = "Private subnet state"
}

output "public_subnet_url" {
  value = google_compute_subnetwork.public_subnet.self_link
  description = "Public subnet link"
}

output "public_subnet_state" {
  value = google_compute_subnetwork.public_subnet.state
  description = "Public subnet state"
}
