provider "aws" {
  region  = var.region
  profile = "soat"
}

module "database-sg" {
  source = "./database-sg"
  vpc_id = var.vpc_id
}

module "database-subnet" {
  source = "./database-subnet"
  subnet_ids = var.subnet_ids
}

module "database" {
  source = "./database"

  password            = var.db_password
  db_name             = var.db_name
  username            = var.username
  publicly_accessible = true
  db_subnet_group_name = module.database-subnet.database_subnet_group_name
  security_group_ids   = [module.database-sg.rds_security_group_id]
}

output "database_host" {
  value       = module.database.db_instance_endpoint
  description = "The endpoint address of the RDS database instance"
}
