# project/modules/vpc/variables.tf
# variable for region
variable "region" {
  description = "AWS region"
}
#variable for vpc
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
}

#variable for subnet

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

variable "subnet_name" {
  description = "Name tag for the subnet"
}

variable "availability_zone" {
  description = "Name of Availability zone"
}

#variable for security group

variable "security_group_name" {
  description = "Name of the security group"
}

#variable for ec2-instance
variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}
