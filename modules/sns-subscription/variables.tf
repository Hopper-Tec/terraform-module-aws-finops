variable "subscriptions" {
  description = "(Required) List of SNS subscriptions to create. Use this to subscribe cross-account topics to local endpoints (e.g. Lambda, HTTPS)."
  type = list(object({
    topic_arn = string
    protocol  = string
    endpoint  = string
  }))
}
