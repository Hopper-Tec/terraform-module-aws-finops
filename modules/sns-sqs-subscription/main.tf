resource "aws_sns_topic_subscription" "this" {
  for_each = var.subscriptions

  topic_arn              = each.value.topic_arn
  protocol               = "sqs"
  endpoint               = var.sqs_queue_arn
  raw_message_delivery   = var.raw_message_delivery
  endpoint_auto_confirms = var.endpoint_auto_confirms
}
