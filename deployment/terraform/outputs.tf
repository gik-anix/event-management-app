output "s3_bucket_name" {
  value       = aws_s3_bucket.frontend.id
  description = "The name of the S3 bucket hosting the website."
}

output "s3_bucket_region" {
  value       = aws_s3_bucket.frontend.region
  description = "The AWS region where the S3 bucket is located."
}

output "cloudfront_access_url" {
  value       = var.domain_name != "" ? "https://${var.domain_name}" : "https://${aws_cloudfront_distribution.frontend_distribution.domain_name}"
  description = "The access URL for the CloudFront distribution."
}

output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.frontend_distribution.id
  description = "The ID of the CloudFront distribution."
}

