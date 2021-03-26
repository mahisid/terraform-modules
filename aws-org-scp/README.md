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
| policy\_doc\_name | The name of the file containing SCP policy json | `string` | n/a | yes |
| policy\_doc\_path | The directory where the SCP policy document exists | `string` | n/a | yes |
| scp\_description | The description of the SCP | `string` | n/a | yes |
| scp\_name | The name of the SCP | `string` | n/a | yes |
| target\_ids | The list OU Ids / Account Ids to which SCP is applied | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| scp\_policy\_id | The id of scp policy |

