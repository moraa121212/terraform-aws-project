variable "vpc_id" {
  description = "This is the VPC ID where resources will be created"
  type        = string
}


variable "igw_name" {
  description = "This is the igw name tag"
  default     = "iTi_IGW"
  type        = string

}