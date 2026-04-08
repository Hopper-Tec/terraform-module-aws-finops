output "subscription_arns" {
  description = "Map of subscription ARNs"
  value       = { for k, v in aws_sns_topic_subscription.this : k => v.arn }
}
