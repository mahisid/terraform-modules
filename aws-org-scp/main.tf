# Terraform module to deploy Organization SCP

resource "aws_organizations_policy" "org_scp_policy" {
  name        = var.scp_name
  description = var.scp_description
  content = file("${var.policy_doc_path}/${var.policy_doc_name}")
}

resource "aws_organizations_policy_attachment" "scp_attachment" {
  count = length(var.target_ids)
  policy_id = aws_organizations_policy.org_scp_policy.id
  target_id = var.target_ids[count.index]
}

output "scp_policy_id" {
  description = "The id of scp policy"
  value = aws_organizations_policy.org_scp_policy.id
}
