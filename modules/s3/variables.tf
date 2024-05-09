variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "bucket_acl" {
  type        = string
  description = "ACL for S3 bucket"
  default     = "private"
}

variable "bucket_ownership" {
  description = "Ownership setting for the S3 bucket objects"
  type        = string
}

variable "base_tags" {
  description = "Base tags passed to the tagging module."
  type        = map(string)
}
