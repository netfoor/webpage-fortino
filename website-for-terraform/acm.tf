resource "aws_acm_certificate" "ssl" {
    domain_name = var.domain_name
    validation_method = "DNS"
    subject_alternative_names = ["www.${var.domain_name}"]
    
    lifecycle {
    create_before_destroy = true
    prevent_destroy = false
  }

    tags = {
        Name        = "${var.project}-${var.environment}-ssl"
        Environment = var.environment
        Owner       = var.owner
        Team        = var.team
    }
  
}

resource "aws_acm_certificate_validation" "cert_validation" {
  certificate_arn = aws_acm_certificate.ssl.arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]
   depends_on = [aws_route53_record.cert_validation]
}