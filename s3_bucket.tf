provider "aws" {
  region = "us-west-2"  # Change this to your preferred region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-tf-state-bucket-dev"  # Replace with your unique bucket name
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "terraform_state_block" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}
