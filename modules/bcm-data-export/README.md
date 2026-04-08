# bcm-data-export

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
| [aws_bcmdataexports_export.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/bcmdataexports_export) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compression"></a> [compression](#input\_compression) | (Optional) The compression type for the export. Valid values: GZIP, PARQUET. | `string` | `"PARQUET"` | no |
| <a name="input_format"></a> [format](#input\_format) | (Optional) The file format for the export. Valid values: TEXT\_OR\_CSV, PARQUET. | `string` | `"PARQUET"` | no |
| <a name="input_frequency"></a> [frequency](#input\_frequency) | (Required) How often the export is refreshed. Valid values: SYNCHRONOUS. | `string` | `"SYNCHRONOUS"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the export. | `string` | n/a | yes |
| <a name="input_output_type"></a> [output\_type](#input\_output\_type) | (Optional) The output type for the export. Valid values: CUSTOM. | `string` | `"CUSTOM"` | no |
| <a name="input_overwrite"></a> [overwrite](#input\_overwrite) | (Optional) Whether to overwrite existing export files. Valid values: CREATE\_NEW\_REPORT, OVERWRITE\_REPORT. | `string` | `"OVERWRITE_REPORT"` | no |
| <a name="input_query_statement"></a> [query\_statement](#input\_query\_statement) | (Required) The SQL query statement for the data export. | `string` | n/a | yes |
| <a name="input_s3_bucket"></a> [s3\_bucket](#input\_s3\_bucket) | (Required) The name of the S3 bucket to deliver the export to. | `string` | n/a | yes |
| <a name="input_s3_prefix"></a> [s3\_prefix](#input\_s3\_prefix) | (Required) The S3 key prefix for the export files. | `string` | n/a | yes |
| <a name="input_s3_region"></a> [s3\_region](#input\_s3\_region) | (Required) The AWS region of the S3 bucket. | `string` | n/a | yes |
| <a name="input_table_configurations"></a> [table\_configurations](#input\_table\_configurations) | (Optional) Table configuration map. Keys are table names (e.g. COST\_AND\_USAGE\_REPORT), values are maps of configuration options. | `map(map(string))` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_bcmdataexports_export_arn"></a> [aws\_bcmdataexports\_export\_arn](#output\_aws\_bcmdataexports\_export\_arn) | The ARN of the BCM data export. |
| <a name="output_aws_bcmdataexports_export_id"></a> [aws\_bcmdataexports\_export\_id](#output\_aws\_bcmdataexports\_export\_id) | The ID of the BCM data export. |
<!-- END_TF_DOCS -->
