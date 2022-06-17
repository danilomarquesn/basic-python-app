# VPC

output "vpc-bootcamp-id" {
  value = data.aws_vpc.selected.id
}

output "vpc-bootcamp-arn" {
  value = data.aws_vpc.selected.arn
}
