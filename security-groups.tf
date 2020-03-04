# Criação de Security groups e liberação de acesso IP_blockS -AWS - V1 - Etore Garone


resource "aws_security_group" "libera_ssh-us-east-1" {
  provider = "aws.us-east-1"
  name        = "libera_ssh"
  description = "libera_ssh"
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22 
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso}"
  }
  tags = {
    Name = "ssh"
  }
}
#resource "aws_security_group" "libera_ssh-us-east-1" {
#  provider = "aws.us-east-1"
#  name        = "libera_ssh"
#  description = "libera_ssh"
#  ingress {
    # TLS (change to whatever ports you need)
#    from_port   = 22 
#    to_port     = 22
#    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    #cidr_blocks = ["191.183.198.226/32"]
#    cidr_blocks = "${var.cdirs_acesso}"
#  }
#  tags = {
#    Name = "ssh"
#  }
#}

resource "aws_security_group" "libera_oracle-us-east-1" {
  provider = "aws.us-east-1"
  name        = "libera_oracle_db"
  description = "libera_oracle_db"
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 1521 
    to_port     = 1521
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso}"
  }
  tags = {
    Name = "oracle_db"
  }
}
 resource "aws_security_group" "libera_ssh" {
  provider = "aws.us-east-1"
 # provider = "aws.us-east-1"
  name        = "libera_ssh"
  description = "libera_ssh"
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22 
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso}"
  }
  tags = {
    Name = "ssh"
  }
}
resource "aws_security_group" "libera_https" {
  name        = "libera_https"
  description = "libera_https"
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso}"
  }
  tags = {
    Name = "https"
  }
}
resource "aws_security_group" "libera_http" {
  name        = "libera_http"
  description = "libera_http"
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80 
    to_port     = 80
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso}"
  }
  tags = {
    Name = "http"
  }
}

