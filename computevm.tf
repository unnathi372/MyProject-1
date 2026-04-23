resource "google_compute_instance" "my_vm" {
  name = var.vm_name
  zone = var.zone_name
  can_ip_forward = false
  machine_type = var.vm_machine_type
  network_interface {
    network = google_compute_network.my_vpc.id
    subnetwork = google_compute_subnetwork.private_subnet.id
    stack_type = var.ipv4_stack
  }
  boot_disk {
    device_name = var.bootdisk_device_name
    auto_delete = false
    mode = var.bootdisk_mode
    initialize_params {
      image = var.vm_image
      type = var.disk_type
    }
  }
  metadata = {
    enable-oslogin = true
    startup-script = file("${path.module}/ngnix_install.sh")
  }
}
