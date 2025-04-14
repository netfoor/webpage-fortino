output "s3_bucket_name" {
  value = aws_s3_bucket.website.bucket
  
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.website.domain_name
  
}

output "ssl_certificate_arn" {
  value = aws_acm_certificate.ssl.arn
  
}

output "route53_name_servers" {
  value       = aws_route53_zone.primary.name_servers
  description = "Name servers for the Route 53 zone"
}

output "route53_zone_id" {
  value       = aws_route53_zone.primary.zone_id
  description = "Zone ID for the Route 53 zone"
}