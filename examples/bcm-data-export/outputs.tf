output "aws_bcmdataexports_export_arn" {
  description = "The ARN of the BCM data export."
  value       = module.bcm_data_export.aws_bcmdataexports_export_arn
}

output "aws_bcmdataexports_export_id" {
  description = "The ID of the BCM data export."
  value       = module.bcm_data_export.aws_bcmdataexports_export_id
}
