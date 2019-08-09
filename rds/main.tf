resource "aws_db_instance" "db" {
  identifier             = "demodb-postgres"
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "5.6.41"
  instance_class         = var.db_instance_class
  name                   = var.dbname
  username               = var.dbuser
  password               = var.database_master_password
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [var.rds_security_group_ids]
  skip_final_snapshot    = true
}
resource "aws_ssm_parameter" "secret" {
  name        = "/dev/database/password/master"
  description = "The parameter description"
  type        = "SecureString"
  value       = var.database_master_password
 # key_id      = "arn:aws:kms:us-east-1:846658358981:key/447fe92a-bed6-4e82-b6b9-b7e3492a9694"
}
