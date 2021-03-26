# Terraform module to build lambda function using s3 deployment package

data "archive_file" "zip_lambda_code" {
  type        = "zip"
  output_path = "${var.function_name}.zip"
  source_dir  = var.code_source_dir
}

resource "aws_s3_bucket_object" "upload_code" {
  key        = var.function_name
  bucket     = var.s3_bucket_name
	source     = data.archive_file.zip_lambda_code.output_path
	etag       = data.archive_file.zip_lambda_code.output_base64sha256
}

resource "aws_lambda_function" "lambda_function" {
	s3_bucket        = var.s3_bucket_name
	s3_key           = aws_s3_bucket_object.upload_code.id
  source_code_hash = data.archive_file.zip_lambda_code.output_base64sha256
	function_name    = var.function_name
  role             = var.lambda_execution_role
  description      = var.lambda_description
  memory_size      = var.lambda_memory_size
  runtime          = var.lambda_runtime
  layers           = var.lambda_layers
  timeout          = var.lambda_timeout
  handler          = var.lambda_handler
  dynamic "environment" {
    for_each = length(var.environment) > 0 ? [1] : []
    content {
      variables = var.environment
    }
  }
  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }
}

output "lambda_function_arn" {
  description = "The arn of the lambda function"
  value = aws_lambda_function.lambda_function.arn
}

output "lambda_function_name" {
  description = "The name of the lambda function"
  value = var.function_name
}
