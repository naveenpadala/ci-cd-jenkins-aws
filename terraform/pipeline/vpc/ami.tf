data "aws_ami" "bastion" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["bastion-2019.11.0"]
  }
}

