output "app_service_url" {
  description = "The URL of the Blazor App Service"
  value       = azurerm_linux_web_app.app.app_service_url   
}