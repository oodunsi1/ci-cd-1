terraform {
  backend "s3" {
    bucket         = "tobby2110-terraform-backend-bucket"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

