variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = map(any)
}

variable "eip_tags" {
  description = "Tags for the EIP"
  type = map(any)
}

variable "nat_gw_tags" {
  description = "Tags for the NAT GW"
  type = map(any)
}

variable "igw_tags" {
  description = "Tags for the IGW"
  type = map(any)
}
