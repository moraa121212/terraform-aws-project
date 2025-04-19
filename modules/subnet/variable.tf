variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}


variable "subnet_name" {
  description = "This is the subnet name tag"
  default     = "iTi_subnet"
  type        = string

}


variable "subnet_cidr" {
  description = "This is the default subnet cidr"
  default     = "10.0.1.0/24"
  type        = string
}

variable "subnet_az" {
  description = "This is the default AZ for the Subnet"
  default     = "us-east-1a"
  type        = string

}