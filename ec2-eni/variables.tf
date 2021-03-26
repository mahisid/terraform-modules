
variable "subnet_ids" {
  description = "List of AWS VPC Subnet IDs"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group ids"
  type        = list(string)
}

variable "name_tag" {
  description = "Name tag perfix for the interfaces"
  type        = string
}

variable "source_dest_check" {
  description = "Source Destination flag for ENI"
  type        = bool
  default     = false
}
