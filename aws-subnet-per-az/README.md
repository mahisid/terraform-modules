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
| aws\_vpc\_id | AWS VPC ID in a region | `string` | n/a | yes |
| name\_tag | Name tag prefix of the subnets | `string` | n/a | yes |
| subnet\_cidrs | List of subnet IP CIDR ranges | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| subnet\_ids | List of subnets IDs |

