resource "aws_budgets_budget" "this" {
  name         = var.name
  budget_type  = var.budget_type
  limit_amount = var.limit_amount
  limit_unit   = var.limit_unit
  time_unit    = var.time_unit

  dynamic "cost_filter" {
    for_each = var.cost_filters
    content {
      name   = cost_filter.value.name
      values = cost_filter.value.values
    }
  }

  dynamic "notification" {
    for_each = var.notifications
    content {
      comparison_operator        = notification.value.comparison_operator
      notification_type          = notification.value.notification_type
      threshold                  = notification.value.threshold
      threshold_type             = notification.value.threshold_type
      subscriber_sns_topic_arns  = lookup(notification.value, "subscriber_sns_topic_arns", [])
      subscriber_email_addresses = lookup(notification.value, "subscriber_email_addresses", [])
    }
  }

  tags = var.tags
}
