# modules/ec2_instance/main.tf
resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name = var.us-east-1-keypair
  security_groups = [var.security_group_id]

  #other configuration for the EC2 instance
}
