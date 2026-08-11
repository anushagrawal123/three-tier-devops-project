resource "aws_instance" "application_server" {

  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.prod_sg.id]
  associate_public_ip_address = true

  user_data = file("${path.module}/userdata-app.sh")

  root_block_device {
    volume_size           = var.volume_size
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = "Application-Server"
  }
}