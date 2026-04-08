output "monitor_arn" {
  description = "The ARN of the cost anomaly monitor."
  value       = aws_ce_anomaly_monitor.this.arn
}

output "monitor_id" {
  description = "The ID of the cost anomaly monitor."
  value       = aws_ce_anomaly_monitor.this.id
}

output "subscription_arn" {
  description = "The ARN of the cost anomaly subscription."
  value       = aws_ce_anomaly_subscription.this.arn
}

output "subscription_id" {
  description = "The ID of the cost anomaly subscription."
  value       = aws_ce_anomaly_subscription.this.id
}
