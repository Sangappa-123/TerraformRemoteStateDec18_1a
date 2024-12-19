terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-1212"
    key            = "networking/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
