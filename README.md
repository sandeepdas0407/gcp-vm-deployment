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

The workflows use [Workload Identity Federation](https://cloud.google.com/iam/docs/workload-identity-federation) for keyless authentication.

### Required GitHub Secrets

| Secret | Description |
|--------|-------------|
| `WIF_PROVIDER` | Workload Identity Provider resource name |
| `GCP_SERVICE_ACCOUNT` | Service account email for Terraform |

### Workflows

- **terraform-plan.yml** - Runs `plan` on PRs, posts output as a comment
- **terraform-apply.yml** - Runs `apply` on push to `main`
- **terraform-destroy.yml** - Manual workflow to tear down infrastructure

## Project Structure

```
.
├── .github/workflows/   # CI/CD pipelines
├── main.tf              # VM, VPC, firewall resources
├── variables.tf         # Input variable definitions
├── outputs.tf           # Output values
├── provider.tf          # Provider and version config
├── terraform.tfvars     # Variable values
└── backend.tf.example   # Remote state backend template
```
