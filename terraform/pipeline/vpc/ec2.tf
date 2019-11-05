resource "aws_key_pair" "cicdDemo" {
  key_name = "cicdDemo"
  public_key = "${file("${var.public_key}")}"
}

resource "aws_instance" "server" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.cicdDemo.key_name}"
  vpc_security_group_ids = ["${aws_security_group.server_sg.id}"]
  subnet_id = "${element(aws_subnet.private_subnets.*.id, 0)}"

  tags = {
    Name = "server"
    Author = "npadala"
  }
}

resource "aws_security_group" "server_sg" {
  name = "server_sg_${var.vpc_name}"
  description = "Allow SSh from anywhere"
  vpc_id = "${aws_vpc.default.id}"

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
}