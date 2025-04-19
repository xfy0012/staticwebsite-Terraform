resource "aws_s3_object" "index" {
  bucket       = "fanyingxu-portfolio-site-0419"  
  key          = "index.html"
  source       = "../site/index.html"             
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket       = "fanyingxu-portfolio-site-0419"
  key          = "error.html"
  source       = "../site/error.html"
  content_type = "text/html"
}
