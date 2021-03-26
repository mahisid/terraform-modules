# Terraform module to deploy a subnet per AZ in a region

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "subnet" {
  count = length(data.aws_availability_zones.available.names)
  vpc_id     = var.aws_vpc_id
  cidr_block = var.subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "${var.name_tag}-${count.index+1}"
  }
}

output "subnet_ids" {
  description = "List of subnets IDs"
  value = aws_subnet.subnet[*].id
}
