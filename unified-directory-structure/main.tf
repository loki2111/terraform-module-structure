#main.tf
provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
module "network" {
  source = "./modules-main-service/network"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  vpc_id          = module.network.vpc_id
  subnet_cidr     = var.subnet_cidr
  availability_zone = var.availability_zone
  subnet_name     = var.subnet_name
  internet_gateway_id = module.network.internet_gateway_id
}

module "security_group" {
  source                  = "./modules-main-service/security-group"
  vpc_id                  = module.network.vpc_id
  security_group_name     = "var.security_group_name"
}

#ec2-instance
module "ec2_instance" {
  source          = "./modules-main-service/ec2-instance"
  #vpc_id          = module.network.vpc_id
  subnet_id       = module.network.subnet_id
  instance_type   = var.instance_type
  ami             = var.ami
  us-east-1-keypair = var.us-east-1-keypair
  security_group_id = module.security_group.security_group_id
  # Provide other input variables as needed
}
module "s3" {
  source = "./modules-main-service/s3"
  bucket_name = var.bucket_name
}
