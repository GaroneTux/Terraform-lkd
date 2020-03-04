# Script para criação de instâncias AWS - V1 - Etore Garone

resource "aws_instance" "DEV" {
  provider = "aws.us-east-1"
  count = 3
  ami = "${var.amis["rhel-us-east-1"]}"
  instance_type =  "${var.type-machine["t2micro"]}"
  key_name = "${var.keyaws}"
  #key_name = "${var.keyaws["keymaster"]}"
  tags = { 
      Name = "DEV${count.index}"
   }
   vpc_security_group_ids= ["${aws_security_group.libera_ssh.id}", ]
   
}
#resource "aws_instance" "DEV4" {
#  provider = "aws.us-east-2"
#  ami = "${var.amis["rhel-us-east-2"]}"
#  instance_type =  "${var.type-machine["t2"]}" OLD
#  instance_type =  "${var.type-machine["t2micro"]}"
#  key_name = "${var.keyaws["keymaster"]}" OLD
#  key_name = "${var.keyaws}"
#  tags = { 
#      Name = "DEV4"
#   }
#   vpc_security_group_ids= ["${aws_security_group.libera_https.id}", "${aws_security_group.libera_https.id}", "${aws_security_group.libera_http.id}", "${aws_security_group.libera_ssh.id}"]
#   depends_on = ["aws_s3_bucket.vm-dev4"]
#}
#resource "aws_instance" "DEV5" {
#  provider = "aws.us-east-2"
#  ami = "${var.amis["rhel-us-east-2"]}"
#  instance_type =  "${var.type-machine["t2"]}" OLD
#  instance_type =  "${var.type-machine["t2micro"]}" 
#  key_name = "${var.keyaws["keymaster"]}"OLD
#  key_name = "${var.keyaws["keymaster"]}"
#  tags = { 
#      Name = "DEV5"
#   }
#   vpc_security_group_ids= ["${aws_security_group.libera_https.id}", "${aws_security_group.libera_http.id}", "${aws_security_group.libera_http.id}", "${aws_security_group.libera_ssh.id}"]
#   depends_on = ["aws_s3_bucket.vm-dev5"]
#}
#resource "aws_instance" "DEV6" {
#  provider = "aws.sa-east-1"
#  ami = "${var.amis["rhel-sa-east-1"]}"
#  instance_type =  "${var.type-machine["t2"]}" OLD
#  instance_type =  "${var.type-machine["t2micro"]}"
#  key_name = "${var.keyaws["keymaster"]}" OLD
#  key_name = "${var.keyaws}"
#  tags = { 
#      Name = "DEV6"
#   }
#   vpc_security_group_ids= ["${aws_security_group.libera_oracle-us-east-1.id}", "${aws_security_group.libera_ssh-us-east-1.id}"]
#   depends_on = ["aws_dynamodb_table.dynamodb-dev"]
#}
