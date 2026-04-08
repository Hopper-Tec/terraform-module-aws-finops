variable "name" {
  description = "(Required) The name of the budget."
  type        = string
}

variable "budget_type" {
  description = "(Required) The type of budget. Valid values: COST, USAGE, SAVINGS_PLANS_UTILIZATION, RI_UTILIZATION."
  type        = string
  default     = "COST"
}

variable "limit_amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  type        = string
}

variable "limit_unit" {
  description = "(Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold. Defaults to USD."
  type        = string
  default     = "USD"
}

variable "time_unit" {
  description = "(Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, DAILY."
  type        = string
  default     = "MONTHLY"

  validation {
    condition     = contains(["MONTHLY", "QUARTERLY", "ANNUALLY", "DAILY"], var.time_unit)
    error_message = "Valid values are MONTHLY, QUARTERLY, ANNUALLY, or DAILY."
  }
}

variable "cost_filters" {
  description = "(Optional) A list of cost filters to apply to the budget."
  type = list(object({
    name   = string
    values = list(string)
  }))
  default = []
}

variable "notifications" {
  description = "(Required) A list of notifications for the budget. Each notification specifies threshold and subscribers."
  type = list(object({
    comparison_operator        = string
    notification_type          = string
    threshold                  = number
    threshold_type             = string
    subscriber_sns_topic_arns  = optional(list(string), [])
    subscriber_email_addresses = optional(list(string), [])
  }))
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
