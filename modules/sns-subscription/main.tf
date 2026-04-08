resource "aws_sns_topic_subscription" "this" {
  for_each = { for idx, sub in var.subscriptions : idx => sub }

  topic_arn = each.value.topic_arn
  protocol  = each.value.protocol
  endpoint  = each.value.endpoint
}
