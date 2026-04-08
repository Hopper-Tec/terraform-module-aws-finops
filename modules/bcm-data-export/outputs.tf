output "export_arn" {
  description = "The ARN of the BCM data export."
  value       = aws_bcmdataexports_export.this.export[0].export_arn
}

output "export_id" {
  description = "The ID of the BCM data export."
  value       = aws_bcmdataexports_export.this.id
}
