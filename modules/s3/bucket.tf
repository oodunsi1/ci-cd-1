resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags = module.tags.combined_tags
}

resource "aws_s3_bucket_ownership_controls" "bucket-ownership" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = var.bucket_ownership
  }
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  depends_on = [aws_s3_bucket_ownership_controls.bucket-ownership]

  bucket = aws_s3_bucket.bucket.id
  acl    = var.bucket_acl
}

module "tags" {
  source          = "../tags"
  base_tags       = var.base_tags
  additional_tags = {
    "ResourceType" = "S3 Bucket"
  }
}


