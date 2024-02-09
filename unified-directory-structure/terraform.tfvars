# project/terraform.tfvars

region   = "us-east-1"
vpc_cidr = "10.10.0.0/16"
vpc_name = "my-vpc"
subnet_cidr = "10.10.1.0/24"
subnet_name = "my-subnet"
availability_zone = "us-east-1a"
security_group_name = "my-security-group"
instance_type = "t2.micro"
ami = "ami-053b0d53c279acc90"
us-east-1-keypair = "PROJECT"