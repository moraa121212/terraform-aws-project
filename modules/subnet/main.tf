resource "aws_subnet" "iTi_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az
  tags = {
    Name = var.subnet_name
  }
}
