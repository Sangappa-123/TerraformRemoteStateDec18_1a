terraform {
  backend "s3" {
    bucket         = "terraformstate-1234"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
  }
}
