
module "instance_provisioning" {
  source      = "../module"

  aws_region = var.aws_region

  vpc_cidr = var.vpc_cidr

  subnets_cidr = var.subnets_cidr

  azs= var.azs

  aws_instance_ami = var.aws_instance_ami

  aws_instance_type = var.aws_instance_type

  aws_instance_key_name = var.aws_instance_key_name

  aws_launch_configuration_name = var.aws_launch_configuration_name

#  aws_ebs_volume_size = var.aws_ebs_volume_size
#
#  aws_ebs_volume_tags = var.aws_ebs_volume_tags
#
#  aws_volume_attachment_device_name = var.aws_volume_attachment_device_name
}