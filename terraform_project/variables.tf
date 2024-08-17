variable "vpc_display_name" {
  type = string
  default = "vpc-isol"
}

variable "sn_display_name1" {
  type = string
  default = "sn-app"
}

variable "sn_ip_range1" {
  type = string
  default = "10.1.1.0/24"
}

variable "sn_display_name2" {
  type = string
  default = "sn-gke"
}

variable "sn_ip_range2" {
  type = string
  default = "10.1.0.0/24"
}

variable "region" {
  type = string
  default = "asia-south1"
}

variable "zone" {
  type = string
  default =  "asia-south1-c" 
}