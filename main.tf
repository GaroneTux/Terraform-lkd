#Declara regiões AWS de atuação - V1 - Etore Garone

provider "aws" {
  alias = "us-east-2"
  version = "~> 2.0"
  region  = "us-east-2"
}

provider "aws" {
  alias = "us-east-1"
  version = "~> 2.0"
  region  = "us-east-1"
}
provider "aws" {
  alias = "sa-east-1"
  version = "~> 2.0"
  region  = "us-east-1"
}
provider "aws" {
  alias = "us-west-1"
  version = "~> 2.0"
  region  = "us-west-1"
}
provider "aws" {
  alias = "us-west-2"
  version = "~> 2.0"
  region  = "us-west-2"
}

