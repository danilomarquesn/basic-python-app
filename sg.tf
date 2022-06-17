module "python_application_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.security_group_name
  description = "Security group for Python Application Service"
  vpc_id      = data.aws_vpc.selected.id

  egress_rules        = ["all-all"]
  ingress_with_cidr_blocks = [
    {
      from_port = 5000
      to_port = 5000
      protocol = "tcp"
      description = "Application port"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      description = "SSH"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  tags = local.tags

}