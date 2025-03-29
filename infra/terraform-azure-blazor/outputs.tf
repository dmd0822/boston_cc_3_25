output "app_service_url" {
  value = module.app_service.app_service_url
}

output "storage_account_connection_string" {
  value = module.storage_account.storage_account_connection_string
}

output "sql_database_connection_string" {
  value = module.sql_database.sql_database_connection_string
}