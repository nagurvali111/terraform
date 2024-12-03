provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "Nagur_tst" {
  bucket = "mystate_nagur"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
