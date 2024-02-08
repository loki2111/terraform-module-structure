# modules/security_group/main.tf
variable "vpc_id" {
  description = "ID of the VPC"
}

variable "security_group_name" {
  description = "Name of the security group"
}

resource "aws_security_group" "main" {
  name        = var.security_group_name
  description = "Security group for EC2 instances"

  vpc_id = var.vpc_id

  # Define security group rules
     ingress {
     from_port   = 22
     to_port     = 22
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
}
