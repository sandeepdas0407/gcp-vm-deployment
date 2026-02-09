# GCP VM Deployment with Terraform

Deploys a single e2-micro VM on Google Cloud Platform with VPC, firewall rules, and a static IP.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) >= 1.5.0
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- GCP project with Compute Engine API enabled

## Quick Start

```bash
# Authenticate with GCP
gcloud auth application-default login

# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Deploy
terraform apply

# Destroy when done
terraform destroy
```

## CI/CD Setup (GitHub Actions)

Uses a service account key JSON stored as a GitHub secret.

### Required GitHub Secrets

| Secret | Description |
|--------|-------------|
| `GCP_SA_KEY` | Service account JSON key with Compute Engine permissions |

### Workflows

- **terraform-plan.yml** - Runs `plan` on PRs, posts output as a comment
- **terraform-apply.yml** - Runs `apply` on push to `main`
- **terraform-destroy.yml** - Manual workflow to tear down infrastructure
