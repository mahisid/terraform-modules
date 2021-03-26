# Terraform module to deploy ec2 eni in subnet

resource "aws_network_interface" "ec2_eni" {
  subnet_id       = var.subnet_ids[count.index]
  security_groups = var.security_group_ids
  source_dest_check = var.source_dest_check
  description = "${var.name_tag}-intf-${count.index+1}"
  tags = {
    Name       = "${var.name_tag}-intf-${count.index+1}"
  }
  count = length(var.subnet_ids)
}


output "interface_ids" {
  description = "List of network interface IDs"
  value = aws_network_interface.ec2_eni[*].id
}
