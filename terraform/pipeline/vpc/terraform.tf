terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "ci-cd-terraform-state-aws-pipeline"
    region  = "us-east-2"
    key     = "vpc/terraform.tfstate"
  }
}

provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.aws_profile}"
}