
variable "code_source_dir" {
  description = "The directory where the source code exists"
  type        = string
}

variable "function_name" {
  description = "The directory where the source code exists"
  type        = string
}

variable "s3_bucket_name" {
  description = "Temporary s3 bucket name for storing code"
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
  description = "Lambda layers attached to the function"
  type        = list(string)
  default     = []
}

variable "environment" {
  description = "Environment variables to configure the Lambda function"
  type        = map(string)
  default     = {}
}

variable "subnet_ids" {
  description = "subnet ids for lambda VPC config"
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "security group ids for lambda VPC config"
  type        = list(string)
  default     = []
}
