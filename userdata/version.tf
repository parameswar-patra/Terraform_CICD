terraform {
  required_version = "~> 1.14.0" # (>= 1.14.0 and < 1.15.0)

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.22.0"      # (>= 6.22.0 and < 6.23.0)
    }
  }
}