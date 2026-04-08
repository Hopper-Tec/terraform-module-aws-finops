output "subscription_arns" {
  description = "Map of subscription keys to their ARNs."
  value = {
    for key, sub in aws_sns_topic_subscription.this : key => sub.arn
  }
}
