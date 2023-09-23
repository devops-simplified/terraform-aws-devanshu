variable "vpc_name" {
  description = "VPC Name for the application"
}

variable "environment" {
  description = "Environment Name for the application"
}

variable "public_subnet_name" {
  description = "Public Subnet Name for the application"
}

variable "private_subnet_name" {
  description = "Private Subnet Name for the application"
}

variable "internet_gateway_name" {
  description = "Internet Gateway Name for the application"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
}

variable "public_subnet_cidr_block" {
  description = "Public Subnet CIDR Block"
}

variable "private_subnet_cidr_block" {
  description = "Private Subnet CIDR Block"
}