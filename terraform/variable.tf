# --- Project ---

variable "project_name" {
  type = string
}

variable "region_name" {
  type = string
  default = "asia-south1"
}

variable "zone_name" {
  type = string
  default = "asia-south1-a"
}

variable "zoneb_name" {
  type = string
}

# --- Storage bucket ---

variable "bucket_name" {
  type = string
  default = "my_bucket-001"
}

variable "bucket_level_access" {
  type = bool
  default = true
}

variable "bucket_public_access" {
  type = string
  default = "enforced"
}

variable "bucket_versioning" {
  type = bool
  default = false
}

variable "object_delete_age" {
  type = number
  default = 30
}
variable "no_of_versions" {
  type = number
  default = 1
}

# --- Network ---

variable "vpc_name" {
  type = string
  default = "test-network"
}

variable "vpc_routing" {
  type = string
  default = "REGIONAL"
}

# --- Sub Network ---

variable "subnet_cidr_overlap" {
  type = bool
  default = false
}

variable "subnet_purpose" {
  type = string
  default = "PRIVATE"
}

# --- Public Sub Network ---

variable "public_subnet_name" {
  type = string
  default = "test-public-subnet"
}

variable "subnet_ipv6_enable_access" {
  type = string
  default = "ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"
}

variable "dual_stack" {
  type = string
  default = "IPV4_IPV6"
}

variable "public_subnet_pri_cidr" {
  type = string
}

variable "public_subnet_sec_cidr" {
  type = string
}

# --- Private Sub Network ---

variable "private_subnet_name" {
  type = string
  default = "test-private-subnet"
}

variable "subnet_ipv6_disable_access" {
  type = string
  default = "DISABLE_GOOGLE_ACCESS"
}

variable "ipv4_stack" {
  type = string
  default = "IPV4_ONLY"
}

variable "private_subnet_pri_cidr" {
  type = string
}

variable "private_subnet_sec_cidr" {
  type = string
}

# --- Compute instance ---

variable "vm_name" {
  type = string
  default = "test-bastion"
}

variable "vm_machine_type" {
  type = string
  default = "e2-small"
}

variable "bootdisk_device_name" {
  type = string
  default = "test-disk"
}

variable "bootdisk_mode" {
  type = string
  default = "READ_WRITE"
}

variable "vm_image" {
  type = string
  default = "debian-cloud/debian-12"
}

variable "disk_type" {
  type = string
  default = "pd-balanced"
}

# --- Firewall ---

variable "firewall_name" {
  type = string
  default = "allow-ssh-firewall"
}

variable "fwallow_protocol" {
  type = string
  default = "tcp"
}

variable "fwallow_ports" {
  type = list(string)
  default = ["22","8000-8100"]
}

variable "fw_direction" {
  type = string
  default = "INGRESS"
}

variable "fw_ranges" {
  type = list(string)
  default = ["35.235.240.0/20"]
}

# --- Cloud NAT and router ---

variable "router_name" {
  type = string
  default = "test-router"
}

variable "nat_name" {
  type = string
  default = "test-nat"
}

variable "nat_tier" {
  type = string
  default = "STANDARD"
}

variable "nat_type" {
  type = string
  default = "PUBLIC"
}

variable "nat_endpoint" {
  type = list(string)
  default = ["ENDPOINT_TYPE_VM"]
}

variable "nat_source_ip_ranges" {
  type = list(string)
  default = ["ALL_IP_RANGES"]
}
