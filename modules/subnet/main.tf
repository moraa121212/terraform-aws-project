resource "aws_subnet" "iTi_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "iTi_subnet"
  }
}
output subnet_id {
  value       = aws_subnet.iTi_subnet.id
}
