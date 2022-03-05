provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3-bucket-abu-002"
}

resource "aws_s3_bucket_versioning" "my_s3_bucket_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
