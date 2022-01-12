resource "aws_instance" "dev4" {
  ami = "ami-090006f29ecb2d79a"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-access.id}"]
  depends_on = [
    aws_s3_bucket.dev4
  ]
}

resource "aws_instance" "dev5" {
  ami = "ami-090006f29ecb2d79a"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
      Name = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-access.id}"]
}

