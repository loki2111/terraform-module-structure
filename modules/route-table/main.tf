# modules/route_table/main.tf
variable "vpc_id" {
  description = "ID of the VPC"
}
variable "internet_gateway_id" {
  description = "ID of the internet gateway"
}

resource "aws_route_table" "main" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    #gateway_id = aws_internet_gateway.main.id
    gateway_id = var.internet_gateway_id
  }
}
