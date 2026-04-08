# Terraform Module: AWS FinOps Toolkit 💰

Reusable Terraform modules to manage AWS cost visibility: anomaly detection, budgets, and BCM data exports.

---

## Index

- [Project Structure](#project-structure)
- [Tooling Setup](#tooling-setup)
- [Usage Guide](#usage-guide)
- [Release Process](#release-process)
- [Troubleshooting](#troubleshooting)
- [Support](#support)

---

## 🗂️ Project Structure

- `.pre-commit-config.yaml` – Shared linting hooks
- `modules/` – Terraform modules
  - [Cost Anomaly Detection](https://github.com/Hopper-Tec/terraform-module-aws-finops/tree/main/modules/cost-anomaly-detection)
  - [Budgets](https://github.com/Hopper-Tec/terraform-module-aws-finops/tree/main/modules/budgets)
  - [BCM Data Export](https://github.com/Hopper-Tec/terraform-module-aws-finops/tree/main/modules/bcm-data-export)

---

## 🧰 Tooling Setup

```sh
# Install Homebrew 🍺
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH (adjust shell if needed)
echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> ~/.zprofile
eval "$($(brew --prefix)/bin/brew shellenv)"

# Install Terraform helpers ⚙️
brew install warrensbox/tap/tfswitch
brew install terraform-docs
brew install tflint
```

> 💡 Run `tfswitch` inside a module to automatically select the required Terraform version.

### ✅ Pre-commit Hooks

Automate formatting, linting, and best practices before every commit.

1) Install pre-commit

```sh
brew install pre-commit
```

2) Enable hooks in this repository (first time)

```sh
pre-commit install --install-hooks
```

3) Run on all files (recommended before your first commit)

```sh
pre-commit run --all-files
```

4) Update hooks occasionally

```sh
pre-commit autoupdate
```

---

## 🚀 Usage Guide

1. Clone this repository and navigate to the desired module folder.
2. Review the module-specific README (linked above) for inputs, examples, and outputs.
3. Use `terraform init`, `terraform plan`, and `terraform apply` to provision resources.
4. Run `terraform-docs` and `tflint` as part of your workflow to keep documentation and linting consistent.

---

## 🏷️ Release Process

- Cut a new tag for every release following [SemVer](https://semver.org/).
- Include changelog notes summarizing module updates.

---

## 🧰 Troubleshooting

```sh
pre-commit run --all-files
git add .
pre-commit run --all-files
```

If Terraform detects drift, review the module README for required inputs or provider versions.

---

## 🤝 Support

- Open an issue or pull request with detailed context.
- Mention the affected module and include Terraform versions.
