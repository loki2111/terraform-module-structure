#vpc
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
}
#subnet
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

variable "internet_gateway_id" {
  description = "ID of the internet gateway"
}
