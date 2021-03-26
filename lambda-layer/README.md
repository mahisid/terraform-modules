## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| lambda\_runtimes | Supported runtime environments for lambda layer | `list(string)` | n/a | yes |
| layer\_name | The name of the lambda layer | `string` | n/a | yes |
| s3\_bucket\_name | s3 bucket name for storing .zip code | `string` | n/a | yes |
| source\_code\_zip | The .zip archive file for lambda layer | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_layer\_arn | The arn of the lambda layer |

