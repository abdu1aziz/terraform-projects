variable "aws_region" {
    default = "us-east-1"
}

variable "aws_t2_ami" {
    default = "ami-0e82489dec5cb7aa5"
}
variable "aws_instance_type" {
    default = "t2.micro"
}
variable "aws_ssh_key" {
    default = "custom-ssh"
}
