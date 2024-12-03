# Step 1: Configure the Terraform backend with S3
terraform {
  backend "s3" {
    bucket  = "nagur112233"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "Nagur_tst" {
  bucket = "nagur1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
