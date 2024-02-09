variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "subnet_id" {
  description = "ID of the subnet"
}

variable "us-east-1-keypair" {
  description = "Key pair of us-east-1"
}

variable "security_group_id" {
  description = "security_group_id"
}
