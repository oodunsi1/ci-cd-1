module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  bucket_acl  = var.bucket_acl
  bucket_ownership = var.bucket_ownership
  base_tags = var.base_tags
}
