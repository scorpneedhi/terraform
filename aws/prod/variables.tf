variable "aws_region" {}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "subnets_cidr" {
  type = list
  default = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "azs" {
  type = list
  default = ["us-west-2a", "us-west-2b"]
}

variable "aws_instance_ami" {}

variable "aws_instance_type" {}

variable "aws_instance_key_name" {}

variable "aws_launch_configuration_name" {
  default = "dev_web_config"
}

#variable "aws_ebs_volume_size" {}
#
#variable "aws_ebs_volume_tags" {}
#
#variable "aws_volume_attachment_device_name" {}

