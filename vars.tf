# Variáveis usadas no Terraform- AWS - V1 - Etore Garone

variable "amis" {
    type = "map"
    default = {
        "rhel-us-east-1" = "ami-0c322300a1dd5dc79"
        "aws-linux-us-east-1" = "ami-0a887e401f7654935 "
        "rhel-us-east-1" = "ami-0c322300a1dd5dc79"
        "aws-linux-us-east-1" = "ami-0a887e401f7654935"
        "rhel-us-east-2" = "ami-0520e698dd500b1d1"
        "aws-linux-us-east-2" = "ami-0e38b48473ea57778"
        "rhel-us-west-1" = "ami-00fc224d9834053d6"
        "aws-linux-us-west-1" ="ami-01c94064639c71719"
        "rhel-us-west-2" = "ami-087c2c50437d0b80d"
        "aws-linux-us-west-2" ="ami-0e8c04af2729ff1bb"
        "rhel-sa-east-1" = "ami-049d8bf763f81a55f"
        "aws-linux-sa-east-2" ="ami-080a223be3de0c3b8"
    }
}
#variable "keyaws" {
#    type = "map"
#    default = {
#        "keymaster" = "terraform"
#    }    
#}
variable "keyaws" {
    default = "terraform"
}

variable "type-machine" {
    type = "map"
    default = {
        "t2micro" = "t2.micro"
        "t2small" = "t2.small"
        "t2large" = "t2.large"
        "t3micro" = "t3.micro"
        "t3small" = "t3.small"
        "t3large" = "t3.large"
    }
}
variable "cdirs_acesso" {
    type = "list"
    default = ["191.183.198.226/32"]
#    default = ["191.183.198.226/32". "192.183.198.227/32"] - exemplo para lista
}

