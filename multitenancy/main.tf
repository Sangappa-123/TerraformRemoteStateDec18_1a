terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-1212"
    key            = "multitenancy/dafault/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-app-${terraform.workspace}-bucket-1212"
  acl    = "private"
}
