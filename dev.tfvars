aws_region  = "us-east-1"
bucket_name = "dev-tobby2110-ci-cd-1"
bucket_acl  = "private"
bucket_ownership = "BucketOwnerPreferred"
base_tags = {
  Environment = "development"
  Project     = "Project Name"
  Owner       = "Dev Team"
  ManagedBy   = "Terraform"
}
