variable "name" {
  description = "(Required) The name of the export."
  type        = string
}

variable "query_statement" {
  description = "(Required) The SQL query statement for the data export."
  type        = string
}

variable "table_name" {
  description = "(Required) The table name for the data query. e.g. COST_AND_USAGE_REPORT."
  type        = string
  default     = "COST_AND_USAGE_REPORT"
}

variable "s3_bucket" {
  description = "(Required) The name of the S3 bucket to deliver the export to."
  type        = string
}

variable "s3_prefix" {
  description = "(Required) The S3 key prefix for the export files."
  type        = string
}

variable "s3_region" {
  description = "(Required) The AWS region of the S3 bucket."
  type        = string
}

variable "compression" {
  description = "(Optional) The compression type for the export. Valid values: GZIP, PARQUET."
  type        = string
  default     = "PARQUET"

  validation {
    condition     = contains(["GZIP", "PARQUET"], var.compression)
    error_message = "Valid values are GZIP or PARQUET."
  }
}

variable "format" {
  description = "(Optional) The file format for the export. Valid values: TEXT_OR_CSV, PARQUET."
  type        = string
  default     = "PARQUET"

  validation {
    condition     = contains(["TEXT_OR_CSV", "PARQUET"], var.format)
    error_message = "Valid values are TEXT_OR_CSV or PARQUET."
  }
}

variable "output_type" {
  description = "(Optional) The output type for the export. Valid values: CUSTOM."
  type        = string
  default     = "CUSTOM"
}

variable "overwrite" {
  description = "(Optional) Whether to overwrite existing export files. Valid values: CREATE_NEW_REPORT, OVERWRITE_REPORT."
  type        = string
  default     = "OVERWRITE_REPORT"

  validation {
    condition     = contains(["CREATE_NEW_REPORT", "OVERWRITE_REPORT"], var.overwrite)
    error_message = "Valid values are CREATE_NEW_REPORT or OVERWRITE_REPORT."
  }
}

variable "frequency" {
  description = "(Required) How often the export is refreshed. Valid values: SYNCHRONOUS."
  type        = string
  default     = "SYNCHRONOUS"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
