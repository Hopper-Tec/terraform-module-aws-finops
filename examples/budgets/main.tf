module "budgets" {
  source = "../../modules/budgets"

  name         = "monthly-account-budget"
  budget_type  = "COST"
  limit_amount = "1000"
  limit_unit   = "USD"
  time_unit    = "MONTHLY"

  notifications = [
    {
      comparison_operator = "GREATER_THAN"
      notification_type   = "ACTUAL"
      threshold           = 80
      threshold_type      = "PERCENTAGE"
      subscriber_email_addresses = [
        "finops@example.com"
      ]
    },
    {
      comparison_operator = "GREATER_THAN"
      notification_type   = "FORECASTED"
      threshold           = 100
      threshold_type      = "PERCENTAGE"
      subscriber_email_addresses = [
        "finops@example.com"
      ]
    }
  ]

  tags = {
    team       = "engineering"
    product    = "finops"
    managed_by = "terraform"
  }
}
