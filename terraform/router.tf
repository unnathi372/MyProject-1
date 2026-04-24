resource "google_compute_router" "myrouter" {
  name = var.router_name
  region = var.region_name
  network = google_compute_network.my_vpc.id
}

resource "google_compute_router_nat" "natrouter" {
  name = var.nat_name
  region = var.region_name
  router = google_compute_router.myrouter.name
  type = var.nat_type
  nat_ip_allocate_option = "AUTO_ONLY"
  auto_network_tier = var.nat_tier
  endpoint_types = var.nat_endpoint
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name = google_compute_subnetwork.private_subnet.id
    source_ip_ranges_to_nat = var.nat_source_ip_ranges
  }
}
