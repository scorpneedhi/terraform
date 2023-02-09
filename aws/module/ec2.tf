# Configure the ec2
resource "aws_instance" "web1" {
  ami           = var.aws_instance_ami
  instance_type = var.aws_instance_instance_type
  key_name = var.aws_instance_key_name

  tags = {
    Name = var.aws_instance_tags
  }
}



