provider "aws" {
  version = "~> 2.0"
  region = "sa-east-1"
}

resource "aws_instance" "dev" {
  count = 2
  ami = "ami-090006f29ecb2d79a"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev${count.index}"
  }
  vpc_security_group_ids = ["sg-00235b16c256c8e17"]
}

resource "aws_security_group" "ssh-access"{
    name = "ssh-access"
    description = "Allow ssh for hosts communication"
    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/32"]
    }

    tags = {
      Name = "ssh"
    }
}