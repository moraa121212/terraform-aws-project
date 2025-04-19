resource "aws_internet_gateway" "iti_IGW" {
  vpc_id = var.vpc_id
  tags = {
    Name = "iTi_IGW"
  }
}
output iti_IGW_id {
  value = aws_internet_gateway.iti_IGW.id
}
