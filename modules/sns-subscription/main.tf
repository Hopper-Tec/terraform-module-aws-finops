resource "aws_sns_topic_subscription" "this" {
  for_each = { for idx, sub in var.subscriptions : idx => sub }

  topic_arn = each.value.topic_arn
  protocol  = each.value.protocol
  endpoint  = each.value.endpoint

  endpoint_auto_confirms    = each.value.protocol == "https" ? true : false
  confirmation_timeout_in_minutes = each.value.protocol == "https" ? 5 : 1
}
