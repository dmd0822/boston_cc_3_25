output "app_service_url" {
  description = "The URL of the Blazor App Service"
  value       = azurerm_app_service.app.default_site_hostname
}
