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

variable "vpc_name" {
  type = string
  default = "test-network"
}

variable "public_subnet_name" {
  type = string
  default = "test-public-subnet"
}

variable "private_subnet_name" {
  type = string
  default = "test-private-subnet"
}

variable "subnet_cidr_overlap" {
  type = bool
  default = false
}

variable "subnet_ipv6_disable_access" {
  type = string
  default = "DISABLE_GOOGLE_ACCESS"
}

variable "subnet_ipv6_enable_access" {
  type = string
  default = "ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE"
}

variable "subnet_purpose" {
  type = string
  default = "PRIVATE"
}

variable "public_subnet_pri_cidr" {
  type = string
}

variable "public_subnet_sec_cidr" {
  type = string
}

variable "private_subnet_pri_cidr" {
  type = string
}

variable "private_subnet_sec_cidr" {
  type = string
}

variable "ipv4_stack" {
  type = string
  default = "IPV4_ONLY"
}

variable "dual_stack" {
  type = string
  default = "IPV4_IPV6"
}

variable "vpc_routing" {
  type = string
  default = "REGIONAL"
}
