provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Three-Tier-DevOps"
      Environment = "Production"
      ManagedBy   = "Terraform"
    }
  }
}