variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "name" {
  type    = string
  default = "gitlab"
}

variable "machine_type" {
  type    = string
  default = "e2-standard-2"
}

variable "disk_type" {
  type    = string
  default = "pd-ssd"
}

variable "disk_size" {
  type    = number
  default = 50
}

variable "subnetwork" {
  type = string
}

variable "domain" {
  type = string
}
