output "vpc_id" {
  description = "The ID of the created VPC"
  value = aws_vpc.main.id
}
output "vpc_cidr_block" {
  description = "The CIDR block of the created VPC"
  value       = aws_vpc.main.cidr_block
}
output "internet_gateway_id" {
  description = "The ID of the created internet gateway"
  value       = aws_internet_gateway.main.id
}
output "subnet_id" {
  description = "The ID of the created Subnet"
  value = aws_subnet.main.id
}