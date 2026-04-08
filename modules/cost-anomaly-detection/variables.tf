variable "name" {
  description = "(Required) Name for the anomaly monitor and subscription."
  type        = string
}

variable "monitor_type" {
  description = "(Required) The type of anomaly monitor. Valid values: DIMENSIONAL, CUSTOM."
  type        = string
  default     = "DIMENSIONAL"

  validation {
    condition     = contains(["DIMENSIONAL", "CUSTOM"], var.monitor_type)
    error_message = "Valid values are DIMENSIONAL or CUSTOM."
  }
}

variable "monitor_dimension" {
  description = "(Optional) The dimension to monitor when monitor_type is DIMENSIONAL. Valid values: SERVICE, LINKED_ACCOUNT."
  type        = string
  default     = "LINKED_ACCOUNT"

  validation {
    condition     = contains(["SERVICE", "LINKED_ACCOUNT"], var.monitor_dimension)
    error_message = "Valid values are SERVICE or LINKED_ACCOUNT."
  }
}

variable "monitor_specification" {
  description = "(Optional) JSON filter expression for CUSTOM monitor type."
  type        = string
  default     = null
}

variable "frequency" {
  description = "(Required) The frequency that anomaly reports are sent. Valid values: DAILY, IMMEDIATE, WEEKLY."
  type        = string
  default     = "DAILY"

  validation {
    condition     = contains(["DAILY", "IMMEDIATE", "WEEKLY"], var.frequency)
    error_message = "Valid values are DAILY, IMMEDIATE, or WEEKLY."
  }
}

variable "subscribers" {
  description = "(Required) List of subscribers to notify. Each subscriber has a type (EMAIL or SNS) and an address."
  type = list(object({
    type    = string
    address = string
  }))

  validation {
    condition     = alltrue([for s in var.subscribers : contains(["EMAIL", "SNS"], s.type)])
    error_message = "Each subscriber type must be EMAIL or SNS."
  }
}

variable "threshold_amount" {
  description = "(Optional) The dollar amount threshold for anomaly alerts. Set to null to receive all anomalies."
  type        = number
  default     = 10
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
