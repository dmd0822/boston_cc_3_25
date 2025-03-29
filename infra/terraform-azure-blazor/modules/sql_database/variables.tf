variable "sql_server_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "sql_database_name" {
  description = "The name of the SQL Database."
  type        = string
}

variable "admin_username" {
  description = "The administrator username for the SQL Server."
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the SQL Server."
  type        = string
  sensitive   = true
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}