provider "aws" {
  region     = "us-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
}
