module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.server_name

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = data.aws_key_pair.basic_keypair.key_name
  monitoring             = var.monitoring
  vpc_security_group_ids = [module.python_application_sg.security_group_id]
  subnet_id              = data.aws_subnet.bootcamp_public_sub_2a.id

  user_data = file("./script.sh")

  tags = local.tags
}

resource "aws_eip" "python-ip" {
  instance = module.ec2_instance.id
  vpc      = true

  tags = merge(
    local.eip_tags,
    local.tags
  )
}