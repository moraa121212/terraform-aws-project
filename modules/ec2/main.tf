resource "aws_instance" "iTi_ec2" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.secgrp]
  tags = {
    Name = "iTi_ec2"
  }
}
