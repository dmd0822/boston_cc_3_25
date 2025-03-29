data "azurerm_resource_group" "main" {
  name = "rg-cc-3-29-25"
}

module "app_service" {
  source              = "./modules/app_service"
  resource_group_name = data.azurerm_resource_group.main.name
  app_service_name    = var.app_service_name
  app_service_plan_tier = "Free" # Updated to use the free tier
}

module "storage_account" {
  source                = "./modules/storage_account"
  resource_group_name   = data.azurerm_resource_group.main.name
  storage_account_name  = var.storage_account_name
  location              = data.azurerm_resource_group.main.location
}

output "app_service_url" {
  value = module.app_service.app_service_url
}

output "storage_account_connection_string" {
  value = module.storage_account.connection_string
}

output "sql_database_connection_string" {
  value = module.sql_database.connection_string
}