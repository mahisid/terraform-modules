
variable "source_code_zip" {
  description = "The .zip archive file for lambda layer"
  type        = string
}

variable "layer_name" {
  description = "The name of the lambda layer"
  type        = string
}

variable "s3_bucket_name" {
  description = "s3 bucket name for storing .zip code"
  type        = string
}

variable "lambda_runtimes" {
  description = "Supported runtime environments for lambda layer"
  type        = list(string)
}
