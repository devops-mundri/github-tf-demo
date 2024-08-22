terraform {
  backend "s3" {
    bucket         = "my-tf-state-bucket-dev"  # Replace with your bucket name
    key            = "state/terraform.tfstate"  # Path within the bucket
    region         = "us-west-2"  # Replace with your region
    encrypt        = true
  }
}
