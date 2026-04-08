resource "aws_ce_anomaly_monitor" "this" {
  name              = var.name
  monitor_type      = var.monitor_type
  monitor_dimension = var.monitor_type == "DIMENSIONAL" ? var.monitor_dimension : null

  dynamic "monitor_specification" {
    for_each = var.monitor_type == "CUSTOM" && var.monitor_specification != null ? [var.monitor_specification] : []
    content {
      # Custom JSON filter expression
    }
  }

  tags = var.tags
}

resource "aws_ce_anomaly_subscription" "this" {
  name             = "${var.name}-subscription"
  frequency        = var.frequency
  monitor_arn_list = [aws_ce_anomaly_monitor.this.arn]

  dynamic "subscriber" {
    for_each = var.subscribers
    content {
      type    = subscriber.value.type
      address = subscriber.value.address
    }
  }

  dynamic "threshold_expression" {
    for_each = var.threshold_amount != null ? [1] : []
    content {
      dimension {
        key           = "ANOMALY_TOTAL_IMPACT_ABSOLUTE"
        match_options = ["GREATER_THAN_OR_EQUAL"]
        values        = [tostring(var.threshold_amount)]
      }
    }
  }

  tags = var.tags
}
