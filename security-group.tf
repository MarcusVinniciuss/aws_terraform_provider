
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
