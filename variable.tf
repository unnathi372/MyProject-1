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
