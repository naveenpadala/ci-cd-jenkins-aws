//Global variables
variable "region" {
  description = "AWS region"
}

variable "shared_credentials_file" {
  description = "AWS credentials file path"
}

variable "aws_profile" {
  description = "AWS profile"
}

variable "availability_zones" {
  type        = "list"
  description = "List of Availability Zones"
}

variable "public_key" {
  description = "SSH public key"
  default = "~/.ssh/id_rsa.pub"
}


//variable "hosted_zone_id" {
//  description = "Route53 zone id"
//}

variable "bastion_key_name" {
  description = "Bastion KeyName"
  default = "cicdDemo"
}

variable "bastion_instance_type" {
  description = "Bastion Instance type"
  default     = "t2.micro"
}

// Default variables
variable "vpc_name" {
  description = "VPC name"
  default     = "cicdDemo"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_count" {
  default     = 2
  description = "Number of public subnets"
}

variable "private_count" {
  default     = 2
  description = "Number of private subnets"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default     = "ami-0c64dd618a49aeee8"
}