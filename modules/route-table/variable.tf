variable "gateway" {
  description = "The ID of the gateway to be used for routing traffic"
  type        = string
}
variable "subnet_id" {
  description = "The ID of the subnet where resources will be deployed"
  type        = string
}
variable "vpc_id" {
  description = "The ID of the VPC that contains the subnet"
  type        = string
}
variable "mora" {
  description = "the ID of the default route table"
  type        = string
}


variable "route_table_name" {
  description = "This is the route-public name tag"
  default     = "iti-default-route-public"
  type        = string

}