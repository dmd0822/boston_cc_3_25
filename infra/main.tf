
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rg" {
  name = "rg-cc-3-29-25"
}

resource "azurerm_service_plan" "asp" {
  name                = "blazor-app-service-plan"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  os_type   = "Linux"
  sku_name  = "F1"
}

resource "azurerm_linux_web_app" "app" {
  name                = "blazor-app-service"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = false
    application_stack {
      dotnet_version = "6.0"
    }
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}

