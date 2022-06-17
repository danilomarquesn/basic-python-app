locals {


  # Tags

  tags = {
    Terraform   = "true"
    Environment = "prod"
    Company     = "NDA"
    Project     = "Python"
    Year        = "2022"
    Team        = "DevOps"
  }

  eip_tags = {
    Name = "Python-Elastic-Ip"
  }
}