resource "aws_default_route_table" "public" {
  default_route_table_id = var.mora
  tags = {
    Name = var.route_table_name
  }
}
resource "aws_route" "public_internet_gateway" {
  route_table_id         = aws_default_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.gateway
  timeouts {
    create = "5m"
  }

}
resource "aws_route_table_association" "public" {
  subnet_id      = var.subnet_id
  route_table_id = aws_default_route_table.public.id
}
