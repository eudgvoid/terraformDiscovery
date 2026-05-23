data "aws_vpc" "vpc_data" {
  filter {
    name   = "tags:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "subnet_data" {
  filter {
    name   = "tags:Name"
    values = [var.public_subnet_name]
  }
}

data "aws_security_group" "sg_data" {
  filter {
    name   = "tags:Name"
    values = [var.security_group_name]
  }
}

data "aws_ami" "ami_data" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = "*al2023-ami-kernel-default-x86_64*"
  }

}
