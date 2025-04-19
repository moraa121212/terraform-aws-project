variable "ami" {
  description = "The AMI to use for launching the EC2 instance"
  type        = string
}

variable "instance-type" {
  description = "The type of EC2 instance to create"
  default     = "t2.micro"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be deployed"

  type = string
}
variable "secgrp" {
  description = "The SG ID for the EC2 instance"
  type        = string
}


variable "ec_name" {
  description = "This is the ec2 name tag"
  default     = "iTi_ec2"
  type        = string

}

variable "initializing_script" {
  description = "This is the User data script varible initial the setup"

}