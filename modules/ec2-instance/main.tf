# modules/ec2_instance/main.tf
variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "subnet_id" {
  description = "ID of the subnet"
}

resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  #other configuration for the EC2 instance
}
