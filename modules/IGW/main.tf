resource "aws_internet_gateway" "iti_IGW" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.igw_name
  }
}