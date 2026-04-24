resource "google_compute_firewall" "allow_ssh_firewall" {
  name = var.firewall_name
  network = google_compute_network.my_vpc.id
  direction = var.fw_direction
  source_ranges = var.fw_ranges
  allow {
    protocol = var.fwallow_protocol
    ports = var.fwallow_ports
  }
  log_config {
    metadata = "EXCLUDE_ALL_METADATA"
  }
}
