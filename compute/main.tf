terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-1212"
    key            = "compute/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
}
