#main.tf
provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "subnet" {
  source          = "./modules/subnet"
  vpc_id          = module.vpc.vpc_id
  subnet_cidr     = var.subnet_cidr
  subnet_name     = var.subnet_name
  availability_zone  = var.availability_zone
}

module "route_table" {
  source     = "./modules/route-table"
  vpc_id     = module.vpc.vpc_id
  internet_gateway_id = module.vpc.internet_gateway_id
}

module "security_group" {
  source                  = "./modules/security-group"
  vpc_id                  = module.vpc.vpc_id
  security_group_name     = "my-security-group"
  # Provide other input variables as needed
}

