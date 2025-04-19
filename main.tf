provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "static_site" {
  bucket = "fanyingxu-portfolio-site-0419"  
  force_destroy = true

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name        = "FanyingStaticSite"
    Environment = "Dev"
  }
}
