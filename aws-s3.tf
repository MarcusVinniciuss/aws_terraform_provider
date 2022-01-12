resource "aws_s3_bucket" "dev4" {
  bucket = "labtf"
  acl = "private"

  tags = {
      Name = "labtf"
  }
}