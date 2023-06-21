terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    name = "terraform-action-test-100000"
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance1" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  tags = {
    Name = "test_instance1"
  }
}
