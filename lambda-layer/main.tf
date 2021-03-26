# Terraform module to build lambda layer using s3 deployment package

resource "aws_s3_bucket_object" "upload_code" {
  key        = "${var.layer_name}.zip"
  bucket     = var.s3_bucket_name
	source     = var.source_code_zip
	etag       = filemd5(var.source_code_zip)
}

resource "aws_lambda_layer_version" "lambda_layer" {
  s3_bucket        = var.s3_bucket_name
	s3_key           = aws_s3_bucket_object.upload_code.id
  source_code_hash = filebase64sha256(var.source_code_zip)
  layer_name       = var.layer_name
  compatible_runtimes = var.lambda_runtimes
}

output "lambda_layer_arn" {
  description = "The arn of the lambda layer"
  value = aws_lambda_layer_version.lambda_layer.arn
}
