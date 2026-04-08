variable "subscriptions" {
  description = "(Required) Map of subscription key to object with topic_arn. Each entry creates an SNS topic subscription to the SQS queue."
  type = map(object({
    topic_arn = string
  }))

  validation {
    condition     = length(var.subscriptions) > 0
    error_message = "subscriptions must contain at least one entry."
  }
}

variable "sqs_queue_arn" {
  description = "(Required) The ARN of the SQS queue to subscribe to the SNS topics."
  type        = string
}

variable "raw_message_delivery" {
  description = "(Optional) Whether to enable raw message delivery. When true, the original message is sent to SQS without SNS metadata wrapping."
  type        = bool
  default     = false
}

variable "endpoint_auto_confirms" {
  description = "(Optional) Whether the endpoint is capable of auto confirming the subscription. Required for cross-account SNS to SQS subscriptions where the subscribing account cannot call GetSubscriptionAttributes on the topic owner's account."
  type        = bool
  default     = false
}
