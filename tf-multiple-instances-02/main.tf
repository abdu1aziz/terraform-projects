provider "aws" {
    region = var.aws_region
}


resource "aws_instance" "cyberarmor_webserver_01" {
  ami             = var.aws_t2_ami
  instance_type   = var.aws_instance_type
  key_name        = var.aws_ssh_key

  tags = {
    Name = "cyberarmor_webserver_01"
  }
}

resource "aws_instance" "cyberarmor_webserver_02" {
  ami             = var.aws_t2_ami
  instance_type   = var.aws_instance_type
  key_name        = var.aws_ssh_key

  tags = {
    Name = "cyberarmor_webserver_02"
  }
}
