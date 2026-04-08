output "aws_budgets_budget_id" {
  description = "The ID of the budget."
  value       = module.budgets.aws_budgets_budget_id
}

output "aws_budgets_budget_arn" {
  description = "The ARN of the budget."
  value       = module.budgets.aws_budgets_budget_arn
}

output "aws_budgets_budget_name" {
  description = "The name of the budget."
  value       = module.budgets.aws_budgets_budget_name
}
