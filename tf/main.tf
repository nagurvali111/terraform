
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "Nagur_tst" {
  bucket = "nagur112233"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


terraform {
  backend "s3" {
    bucket  = "nagur112233"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
