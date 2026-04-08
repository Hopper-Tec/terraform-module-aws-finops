output "aws_ce_anomaly_monitor_arn" {
  description = "The ARN of the cost anomaly monitor."
  value       = module.cost_anomaly_detection.aws_ce_anomaly_monitor_arn
}

output "aws_ce_anomaly_monitor_id" {
  description = "The ID of the cost anomaly monitor."
  value       = module.cost_anomaly_detection.aws_ce_anomaly_monitor_id
}

output "aws_ce_anomaly_subscription_arn" {
  description = "The ARN of the cost anomaly subscription."
  value       = module.cost_anomaly_detection.aws_ce_anomaly_subscription_arn
}

output "aws_ce_anomaly_subscription_id" {
  description = "The ID of the cost anomaly subscription."
  value       = module.cost_anomaly_detection.aws_ce_anomaly_subscription_id
}
