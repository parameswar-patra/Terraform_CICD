#version
terraform {
  required_version = "~> 1.14.0" # (>= 1.14.0 and < 1.15.0)

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.22.0"      # (>= 6.22.0 and < 6.23.0)
    }
  }
}
#provider
provider "aws" {
    profile = "papu"
    region = "ap-south-1" # (Mumbai)
}
#resource
resource "aws_instance" "my_instance_1" {
    ami = "ami-0d176f79571d18a8f"
    instance_type = "t2.micro"
    tags = {
      Name = "my-instance-1"
    }
}
