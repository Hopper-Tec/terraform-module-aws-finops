module "cost_anomaly_detection" {
  source = "../../modules/cost-anomaly-detection"

  name              = "account-anomaly-monitor"
  monitor_type      = "DIMENSIONAL"
  monitor_dimension = "LINKED_ACCOUNT"
  frequency         = "DAILY"
  threshold_amount  = 10

  subscribers = [
    {
      type    = "EMAIL"
      address = "finops@example.com"
    }
  ]

  tags = {
    team       = "engineering"
    product    = "finops"
    managed_by = "terraform"
  }
}
