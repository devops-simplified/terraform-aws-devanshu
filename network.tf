resource "aws_vpc" "java_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name        = var.vpc_name
    Environment = var.environment
  }
}

resource "aws_subnet" "java_public_subnet" {
  vpc_id                  = aws_vpc.java_vpc.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name        = var.public_subnet_name
    Environment = var.environment
  }
}

resource "aws_subnet" "java_private_subnet" {
  vpc_id     = aws_vpc.java_vpc.id
  cidr_block = var.private_subnet_cidr_block

  tags = {
    Name        = var.private_subnet_name
    Environment = var.environment
  }
}

resource "aws_internet_gateway" "java_vpc_igw" {
  vpc_id = aws_vpc.java_vpc.id

  tags = {
    Name        = var.internet_gateway_name
    Environment = var.environment
  }
}