//provider "aws" {
//  region = "${var.region}"
//  shared_credentials_file = "/Users/naveenpadala/.aws/credentials"
//  profile = "default"
//}

//resource "aws_instance" "web" {
//  ami           = "ami-0c64dd618a49aeee8"
//  instance_type = "${var.instance_type}"
//
//  tags = {
//    Name = "tfTest"
//  }
//}