terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

module "myVPC" {
  source   = "./modules/vpc"
  vpc_tags = var.vpc_tags
  eip_tags = var.eip_tags
  igw_tags = var.igw_tags
  nat_gw_tags = var.nat_gw_tags
}
