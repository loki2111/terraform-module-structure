# project/modules/subnet/main.tf
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

variable "subnet_name" {
  description = "Name tag for the subnet"
}

variable "availability_zone" {
  description = "Name of Availability zone"
}

variable "vpc_id" {
  description = "ID of the VPC"
}


resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name
  }
}

output "subnet_id" {
  description = "The ID of the created Subnet"
  value = aws_subnet.main.id
}
