resource "aws_instance" "manager" {
  ami                         = var.ami
  instance_type               = var.instance
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.vpc_security_group_ids]

  tags = {
    Name = "Manager"
  }
}

resource "aws_instance" "worker" {
  ami                         = var.ami
  instance_type               = var.instance
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.vpc_security_group_ids]

  tags = {
    Name = "Worker"
  }
}
