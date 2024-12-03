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

