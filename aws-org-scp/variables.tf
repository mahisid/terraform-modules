
variable "scp_name" {
  description = "The name of the SCP"
  type        = string
}

variable "scp_description" {
  description = "The description of the SCP"
  type        = string
}

variable "policy_doc_path" {
  description = "The directory where the SCP policy document exists"
  type        = string
}

variable "policy_doc_name" {
  description = "The name of the file containing SCP policy json"
  type        = string
}

variable "target_ids" {
  description = "The list OU Ids / Account Ids to which SCP is applied"
  type        = list(string)
}
