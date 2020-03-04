# Criação de Buckets <vinculados em servidores> - AWS - V1 - Etore Garone

resource "aws_s3_bucket" "vm-dev4" {
  provider = "aws.us-east-1"
  bucket = "vm-dev4"
  acl    = "private"
  tags = {
    Name        = "vm-dev4"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "vm-dev5" {
  provider = "aws.us-east-1"
  bucket = "vm-dev5"
  acl    = "private"
  tags = {
    Name        = "vm-dev5"
    Environment = "Dev"
  }
}
