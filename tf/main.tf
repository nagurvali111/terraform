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

resource "aws_s3_bucket" "example" {
  bucket = "nagur112233"

  tags = {
    Environment = "Production"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
      bucket_key_enabled = true
    }
  }

  versioning {
    enabled = false
    mfa_delete = false
  }

  request_payer = "BucketOwner"

  lifecycle {
    prevent_destroy = true
  }
}
