# Configure the ec2
resource "aws_instance" "webservers" {
  count = length(var.subnets_cidr)
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type
  key_name = var.aws_instance_key_name
  security_groups = [aws_security_group.webservers.id]
  subnet_id = element(aws_subnet.public.*.id,count.index)
  user_data = file("install_httpd.sh")

  tags = {
    Name = "Server-${count.index}"
  }
}



