variable "environment" {
  description = "The environment for the resources"
  type        = string
  default = "test"
}

variable "owner" {
  description = "The owner of the resources"
  type        = string
  default = "Fortino-Romero"
  
}

variable "team" {
  description = "The team responsible for the resources"
  type        = string
  default = "DevOps"
  
}

variable "project" {
  description = "The project name for the resources"
  type        = string
  default = "personal-website"
  
}

variable "domain_name" {
  description = "The domain name for the website"
  type        = string
  default = "foor.dev"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for the website"
  type        = string
  default     = "foor.dev-website"
  
}

variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
  
}