#----root/main.tf-----
provider "aws" {
  region = "${var.aws_region}"
}
# Deploy Networking Resources
module "network" {
  source     = "./network"
  aws_region = var.aws_region
  #vpc_cidr     = "${var.vpc_cidr}"
  cidrs   = var.cidrs
  localip = var.localip
  #private_cidrs = var.private_cidrs
  #rds_cidrs = var.rds_cidrs
  #service_ports = var.service_ports
  #sshservice_ports = var.sshservice_ports
  #privateservice_ports = var.privateservice_ports
  #dbservice_ports = var.dbservice_ports
}
module "rds" {
  source                   = "./rds"
  db_instance_class        = var.db_instance_class
  dbname                   = var.dbname
  dbuser                   = var.dbuser
  database_master_password = var.database_master_password
  db_subnet_group_name     = "${module.network.rds_subnets}"
  rds_security_group_ids   = "${module.network.rds_sg}"
}
