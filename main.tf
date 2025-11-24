terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.22.1"
    }
  }
}
provider "aws" {
    region = "ap-south-1"
    access_key = "xxxxxxxxxxxxxxxxxx"
    secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

}
resource "aws_instance" "awsec2003" {
    ami = "ami-02b8269d5e85954ef"
    count = 2
    instance_type = "t3.micro"

}
