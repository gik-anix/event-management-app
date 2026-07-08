terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "roshan-personal"

    workspaces {
      name = "event-management-app-prod"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

