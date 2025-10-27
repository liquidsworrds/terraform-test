variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
}

variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = map(any)
}
