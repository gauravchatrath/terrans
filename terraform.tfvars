#aws_profile       = "linuxacademy"
aws_region        = "us-east-1"
db_instance_class = "db.t2.micro"
dbname            = "linuxacademydb"
dbuser            = "linuxacademy"
database_master_password          = "linuxacademypass"
#key_name          = "id_rsa"
#public_key_path   = "/home/linuxacademy/.ssh/id_rsa.pub"
#dev_instance_type = "t2.micro"
#dev_ami                  = "ami-b73b63a0"
cidrs             = {
  public1         = "10.1.1.0/24"
  public2         = "10.1.2.0/24"
  private1        = "10.1.3.0/24"
  private2        = "10.1.4.0/24"
  rds1            = "10.1.5.0/24"
  rds2            = "10.1.6.0/24"
  rds3            = "10.1.7.0/24"
}
