variable "resource_group_name" {
  description = "The name of the resource group where the resources will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  default     = "East US 2"
}

variable "app_service_name" {
  description = "The name of the Azure App Service."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "sql_server_name" {
  description = "The name of the Azure SQL Server."
  type        = string
}

variable "sql_database_name" {
  description = "The name of the Azure SQL Database."
  type        = string
}

variable "admin_username" {
  description = "The admin username for the SQL Server."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the SQL Server."
  type        = string
  sensitive   = true
}