variable "vpc_name" {
  description = "This is the vpc name tag"
  default     = "iTi_VPC"
  type        = string

}


variable "vpc_cidr" {
  description = "This is the default vpc cidr"
  default     = "10.0.0.0/16"
  type        = string
}