# cost-anomaly-detection

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.39.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ce_anomaly_monitor.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ce_anomaly_monitor) | resource |
| [aws_ce_anomaly_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ce_anomaly_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_frequency"></a> [frequency](#input\_frequency) | (Required) The frequency that anomaly reports are sent. Valid values: DAILY, IMMEDIATE, WEEKLY. | `string` | `"DAILY"` | no |
| <a name="input_monitor_dimension"></a> [monitor\_dimension](#input\_monitor\_dimension) | (Optional) The dimension to monitor when monitor\_type is DIMENSIONAL. Valid values: SERVICE, LINKED\_ACCOUNT, COST\_CATEGORY, TAG. | `string` | `"LINKED_ACCOUNT"` | no |
| <a name="input_monitor_specification"></a> [monitor\_specification](#input\_monitor\_specification) | (Optional) JSON filter expression for CUSTOM monitor type. | `string` | `null` | no |
| <a name="input_monitor_type"></a> [monitor\_type](#input\_monitor\_type) | (Required) The type of anomaly monitor. Valid values: DIMENSIONAL, CUSTOM. | `string` | `"DIMENSIONAL"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name for the anomaly monitor and subscription. | `string` | n/a | yes |
| <a name="input_subscribers"></a> [subscribers](#input\_subscribers) | (Required) List of subscribers to notify. Each subscriber has a type (EMAIL or SNS) and an address. | <pre>list(object({<br/>    type    = string<br/>    address = string<br/>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_threshold_amount"></a> [threshold\_amount](#input\_threshold\_amount) | (Optional) The dollar amount threshold for anomaly alerts. Set to null to receive all anomalies. | `number` | `10` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ce_anomaly_monitor_arn"></a> [aws\_ce\_anomaly\_monitor\_arn](#output\_aws\_ce\_anomaly\_monitor\_arn) | The ARN of the cost anomaly monitor. |
| <a name="output_aws_ce_anomaly_monitor_id"></a> [aws\_ce\_anomaly\_monitor\_id](#output\_aws\_ce\_anomaly\_monitor\_id) | The ID of the cost anomaly monitor. |
| <a name="output_aws_ce_anomaly_subscription_arn"></a> [aws\_ce\_anomaly\_subscription\_arn](#output\_aws\_ce\_anomaly\_subscription\_arn) | The ARN of the cost anomaly subscription. |
| <a name="output_aws_ce_anomaly_subscription_id"></a> [aws\_ce\_anomaly\_subscription\_id](#output\_aws\_ce\_anomaly\_subscription\_id) | The ID of the cost anomaly subscription. |
<!-- END_TF_DOCS -->
