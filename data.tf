# Data VPC

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["bootcamp-vpc"]
  }
}

# Data of Subnet

data "aws_subnet" "bootcamp_public_sub_2a" {
  filter {
    name   = "tag:Name"
    values = ["bootcamp-vpc-public-us-east-2a"]
  }
}

# Key

data "aws_key_pair" "basic_keypair" {
  key_name = "bootcamp"
  filter {
    name   = "tag:Name"
    values = ["bootcamp"]
  }
}