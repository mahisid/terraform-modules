
variable "lambda_code_path" {
  description = "The directory where the lambda function source code exists"
  type        = string
}

variable "function_name" {
  description = "The name of the lambda function"
  type        = string
}

variable "s3_bucket_name" {
  description = "s3 bucket name for storing lambda function code (Same account and region)"
  type        = string
}

variable "lambda_execution_role" {
  description = "Role Arn for lambda execution role"
  type        = string
}

variable "lambda_description" {
  description = "Description for the lambda function"
  type        = string
}

variable "lambda_memory_size" {
  description = "Lambda function memory size"
  type        = number
}

variable "lambda_runtime" {
  description = "Lambda function runtime environment"
  type        = string
}

variable "lambda_timeout" {
  description = "Lambda function timeout"
  type        = number
}

variable "lambda_handler" {
  description = "Lambda function handler"
  type        = string
}

variable "lambda_layers" {
  description = "Lambda layer arns attached to the function"
  type        = list(string)
  default     = []
}

variable "environment" {
  description = "Environment variables to configure the Lambda function"
  type        = map(string)
  default     = {}
}

variable "subnet_ids" {
  description = "Subnet ids for lambda VPC config"
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "Security group ids for lambda VPC config"
  type        = list(string)
  default     = []
}
