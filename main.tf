module "personal-website" {
  source = "./website-for-terraform"

  domain_name = "foor.dev"
  environment = "prod"
  owner       = "Fortino-Romero"
  team        = "DevOps"
  project     = "personal-website"
}

terraform {
  backend "s3" {
    bucket = "terraform-nginx-4-12-2025"
    key    = "terraform-project/terraform.tfstate"
    region = "us-east-1"
  }
}   

output "s3_bucket_name" {
  value = module.personal-website.s3_bucket_name
  
}

output "cloudfront_domain_name" {
  value = module.personal-website.cloudfront_domain_name
  
}

output "ssl_certificate_arn" {
  value = module.personal-website.ssl_certificate_arn
  
}

output "nameservers" {
  value       = module.personal-website.route53_name_servers
  description = "Nameservers que debes configurar en tu registrador de dominios"
}