

variable "aws_vpc_id" {
  description = "AWS VPC ID in a region"
  type        = string
}

variable "name_tag" {
  description = "Name tag of the subnets"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of subnet IP CIDR ranges"
  type        = list(string)
}
