## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| archive | >= 1.3.0 |
| aws | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| archive | >= 1.3.0 |
| aws | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| code\_source\_dir | The directory where the lambda function source code exists | `string` | n/a | yes |
| environment | Environment variables to configure the Lambda function | `map(string)` | `{}` | no |
| function\_name | The name of the lambda function | `string` | n/a | yes |
| lambda\_description | Description for the lambda function | `string` | n/a | yes |
| lambda\_execution\_role | Role Arn for lambda execution role | `string` | n/a | yes |
| lambda\_handler | Lambda function handler | `string` | n/a | yes |
| lambda\_layers | Lambda layer arns attached to the function | `list(string)` | `[]` | no |
| lambda\_memory\_size | Lambda function memory size | `number` | n/a | yes |
| lambda\_runtime | Lambda function runtime environment | `string` | n/a | yes |
| lambda\_timeout | Lambda function timeout | `number` | n/a | yes |
| s3\_bucket\_name | s3 bucket name for storing lambda function code (Same account and region) | `string` | n/a | yes |
| security\_group\_ids | Security group ids for lambda VPC config | `list(string)` | `[]` | no |
| subnet\_ids | Subnet ids for lambda VPC config | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_function\_arn | The arn of the lambda function |
| lambda\_function\_name | The name of the lambda function |

