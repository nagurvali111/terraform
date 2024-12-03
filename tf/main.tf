provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "Nagur" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
