
provider "aws" {
    profile = "tahir"
    region  = 	"us-east-1" 

}

resource "aws_instance" "app_server" {
    ami             = "ami-0e82489dec5cb7aa5"
    instance_type   = "t2.micro"
    security_groups = [ "${aws_security_group.allow_tls.name}" ]
    key_name        = "custom-ssh"

    provisioner "file" {
      source      = "/home/tahir/magicfalcon-tvvrce/index.html"
      destination = "/opt/bitnami/nginx/html/index.html"

      connection {
        type     = "ssh"
        user     = "bitnami"
        private_key = file("/home/tahir/.ssh/id_rsa1")
        host     = aws_instance.app_server.public_ip
      }
    }

    tags = {
      Name = "WebAppServerInstance"
    }

}




