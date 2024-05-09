variable "aws_region" {
  description = "AWS region for the provider"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "bucket_acl" {
  description = "ACL for S3 bucket"
  type        = string
}

variable "bucket_ownership" {
  description = "Defines the ownership controls of the S3 bucket"
  type        = string
}

variable "base_tags" {
  description = "Base tags for all resources"
  type        = map(string)
}

