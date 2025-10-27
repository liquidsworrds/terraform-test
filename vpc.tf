resource "aws_vpc" "myVPC" {
  tags       = var.vpc_tags
  cidr_block = var.vpc_cidr
}


