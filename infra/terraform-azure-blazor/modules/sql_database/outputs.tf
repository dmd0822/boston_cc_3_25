output "sql_database_connection_string" {
  value = "Server=tcp(${azurerm_sql_server.example.name}.database.windows.net);Database=${azurerm_sql_database.example.name};User ID=${var.sql_admin_username};Password=${var.sql_admin_password};"
}

output "sql_database_name" {
  value = azurerm_sql_database.example.name
}