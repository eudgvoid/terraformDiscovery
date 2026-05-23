variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_id" {
  description = "the project identifier used for tagging"
  type        = string
}

variable "vpc_name" {
  description = "the name of the VPC to discover"
  type        = string
}

variable "public_subnet_name" {
  description = "the name of the public subnet to discover"
}

variable "security_group_name" {
  description = "the name of the security group to discover"
  type        = string
}

variable "ec2_name" {
  description = "instance name"
  type        = string
}
