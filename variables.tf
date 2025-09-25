variable "project" {
  description = "The name of the project"
  type        = string
  default     = "soat-challenge"
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "soatdb"
}

variable "username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}


variable "vpc_id" {
  description = "The ID of the VPC where resources will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the database subnet group"
  type        = list(string)
}


