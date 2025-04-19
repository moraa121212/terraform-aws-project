output "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  value       = aws_vpc.iTi_VPC.id
}
output "default_route_table_id" {
  description = "the ID of the default route table"
  value       = aws_vpc.iTi_VPC.default_route_table_id
}
