resource "aws_instance" "this_instance" {
  ami           = data.aws_ami.ami_data.id
  instance_type = "t3.micro"

  subnet_id                   = data.aws_subnet.subnet_data.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.aws_security_group.sg_data.id]


  tags = {
    Name = "${local.instance_name}"
  }
}
