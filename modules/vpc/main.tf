resource "aws_vpc" "iTi_VPC" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "iTi_VPC"
  }
}
output vpc_id {
  value       = aws_vpc.iTi_VPC.id
}
output "default_route_table_id" {
  value = aws_vpc.iTi_VPC.default_route_table_id
}

