# Jenkins Server

variable "server_name" {
  default = "python-application-server"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0c7c4e3c6b4941f0f" # Debian 11 (20220503-998)
}

variable "monitoring" {
  type    = bool
  default = true
}

# Security Group

variable "security_group_name" {
  default = "python-application-sg"
}
