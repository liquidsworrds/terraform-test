resource "aws_vpc" "myVPC" {
  cidr_block = local.vpc_cidr
  tags       = var.vpc_tags
}

resource "aws_internet_gateway" "myIGW" {
  vpc_id = aws_vpc.myVPC.id
  tags = var.igw_tags
}

resource "aws_eip" "myEIP1" {
  tags = var.eip_tags
}

resource "aws_nat_gateway" "myNatGW" {
  allocation_id = aws_eip.myEIP1.id
  subnet_id = aws_subnet.myPubSubnet.id
  tags = var.nat_gw_tags
}

resource "aws_subnet" "myPubSubnet" {
  vpc_id = aws_vpc.myVPC.id
  cidr_block = var.public_subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
  tags = var.public_subnet_tags
}

