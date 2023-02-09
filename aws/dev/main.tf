
module "instance_provisioning" {
  source      = "../module"

  aws_region = var.aws_region

  aws_instance_ami = var.aws_instance_ami

  aws_instance_instance_type = var.aws_instance_instance_type

  aws_instance_key_name = var.aws_instance_key_name

  aws_instance_tags = var.aws_instance_tags

  aws_ebs_volume_size = var.aws_ebs_volume_size

  aws_ebs_volume_tags = var.aws_ebs_volume_tags

  aws_volume_attachment_device_name = var.aws_volume_attachment_device_name
}