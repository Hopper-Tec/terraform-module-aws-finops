# budgets

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
| [aws_budgets_budget.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget_type"></a> [budget\_type](#input\_budget\_type) | (Required) The type of budget. Valid values: COST, USAGE, SAVINGS\_PLANS\_UTILIZATION, RI\_UTILIZATION. | `string` | `"COST"` | no |
| <a name="input_cost_filters"></a> [cost\_filters](#input\_cost\_filters) | (Optional) A list of cost filters to apply to the budget. | <pre>list(object({<br/>    name   = string<br/>    values = list(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_limit_amount"></a> [limit\_amount](#input\_limit\_amount) | (Required) The amount of cost or usage being measured for a budget. | `string` | n/a | yes |
| <a name="input_limit_unit"></a> [limit\_unit](#input\_limit\_unit) | (Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold. Defaults to USD. | `string` | `"USD"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the budget. | `string` | n/a | yes |
| <a name="input_notifications"></a> [notifications](#input\_notifications) | (Required) A list of notifications for the budget. Each notification specifies threshold and subscribers. | <pre>list(object({<br/>    comparison_operator        = string<br/>    notification_type          = string<br/>    threshold                  = number<br/>    threshold_type             = string<br/>    subscriber_sns_topic_arns  = optional(list(string), [])<br/>    subscriber_email_addresses = optional(list(string), [])<br/>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_time_unit"></a> [time\_unit](#input\_time\_unit) | (Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, DAILY. | `string` | `"MONTHLY"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_budgets_budget_arn"></a> [aws\_budgets\_budget\_arn](#output\_aws\_budgets\_budget\_arn) | The ARN of the budget. |
| <a name="output_aws_budgets_budget_id"></a> [aws\_budgets\_budget\_id](#output\_aws\_budgets\_budget\_id) | The ID of the budget. |
| <a name="output_aws_budgets_budget_name"></a> [aws\_budgets\_budget\_name](#output\_aws\_budgets\_budget\_name) | The name of the budget. |
<!-- END_TF_DOCS -->
