variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources to."
  default     = "us-east-1"
}

variable "project_name" {
  type        = string
  description = "Name of the project, used for naming resources."
  default     = "event-mgmt-app"
}

variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, staging, prod)."
  default     = "dev"
}

variable "domain_name" {
  type        = string
  description = "Optional custom domain name for the CloudFront distribution."
  default     = ""
}

variable "acm_certificate_arn" {
  type        = string
  description = "The ARN of the ACM certificate for the custom domain (must be in us-east-1)."
  default     = ""
}
