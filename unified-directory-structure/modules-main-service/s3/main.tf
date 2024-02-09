#S3 resource module
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
 /*
  acl    = "public-read"

  versioning {
    enabled = true
  }
  lifecycle_rule {
    id     = "delete-after-30-days"
    enabled = true

    noncurrent_version_transition {
      days = 30
      storage_class = "GLACIER"
    }
  }
  website {
    index_document = "index.html"
    error_document = "404.html"  
}*/
}

