output "rds_subnets" {
  value = aws_db_subnet_group.rds_subnetgroup.name
}

output "rds_sg" {
  value = aws_security_group.RDS.id
}
