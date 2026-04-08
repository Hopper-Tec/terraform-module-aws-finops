# Cost Anomaly Detection Example

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.0, < 7.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cost_anomaly_detection"></a> [cost\_anomaly\_detection](#module\_cost\_anomaly\_detection) | ../../modules/cost-anomaly-detection | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_ce_anomaly_monitor_arn"></a> [aws\_ce\_anomaly\_monitor\_arn](#output\_aws\_ce\_anomaly\_monitor\_arn) | The ARN of the cost anomaly monitor. |
| <a name="output_aws_ce_anomaly_monitor_id"></a> [aws\_ce\_anomaly\_monitor\_id](#output\_aws\_ce\_anomaly\_monitor\_id) | The ID of the cost anomaly monitor. |
| <a name="output_aws_ce_anomaly_subscription_arn"></a> [aws\_ce\_anomaly\_subscription\_arn](#output\_aws\_ce\_anomaly\_subscription\_arn) | The ARN of the cost anomaly subscription. |
| <a name="output_aws_ce_anomaly_subscription_id"></a> [aws\_ce\_anomaly\_subscription\_id](#output\_aws\_ce\_anomaly\_subscription\_id) | The ID of the cost anomaly subscription. |
<!-- END_TF_DOCS -->
