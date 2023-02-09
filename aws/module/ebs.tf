# Configure the ebs
resource "aws_ebs_volume" "web1_volume" {
  availability_zone = aws_instance.web1.availability_zone
  size              = var.aws_ebs_volume_size

  tags = {
    Name = var.aws_ebs_volume_tags
  }
}

# Attach ebs to ec2
resource "aws_volume_attachment" "ebs_att" {
  device_name = var.aws_volume_attachment_device_name
  volume_id   = aws_ebs_volume.web1_volume.id
  instance_id = aws_instance.web1.id
  stop_instance_before_detaching = true
}