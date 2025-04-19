resource "aws_instance" "iTi_ec2" {
  ami                    = var.ami
  instance_type          = var.instance-type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.secgrp]
  user_data              = file(var.initializing_script)
  tags = {
    Name = var.ec_name
  }
}
