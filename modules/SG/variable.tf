variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

variable "sg_name" {
  description = "This is the sg name tag"
  default     = "iTi_SG"
  type        = string

}