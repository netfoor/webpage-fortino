resource "aws_cloudfront_distribution" "website" {
    



origin {
  domain_name = aws_s3_bucket.website.bucket_regional_domain_name
  origin_id   = "s3-website"
  origin_access_control_id = aws_cloudfront_origin_access_control.oac.id
}


    enabled             = true
    default_root_object = "index.html"

    default_cache_behavior {
        allowed_methods = [
            "GET",
            "HEAD",
            "OPTIONS"
        ]

        cached_methods = [
            "GET",
            "HEAD",
            "OPTIONS"
        ]

        target_origin_id = "s3-website"


        forwarded_values {
            query_string = false

            cookies {
                forward = "none"
            }
        }

        viewer_protocol_policy = "redirect-to-https"
        min_ttl                = 0
        default_ttl            = 36000
        max_ttl                = 86400
    }

    restrictions {
        geo_restriction {
            restriction_type = "none"
        }
    }

    viewer_certificate {
        acm_certificate_arn = aws_acm_certificate_validation.cert_validation.certificate_arn
        ssl_support_method  = "sni-only"
        minimum_protocol_version = "TLSv1.2_2021"
    }
    
    aliases = [ var.domain_name, "www.${var.domain_name}" ]
    tags = {
        Name        = "${var.project}-${var.environment}-cloudfront"
        Environment = var.environment
        Owner       = var.owner
        Team        = var.team
    }

    depends_on = [aws_acm_certificate_validation.cert_validation]
}
