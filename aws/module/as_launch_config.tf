data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["myami"]
  }

  owners = ["self"] # Canonical
}

resource "aws_launch_configuration" "as_conf" {
  name          = var.aws_launch_configuration_name
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type
}