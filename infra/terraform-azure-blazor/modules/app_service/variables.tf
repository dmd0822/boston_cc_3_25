variable "app_service_name" {
  description = "The name of the Azure App Service."
  type        = string
}

variable "app_service_plan_tier" {
  description = "The pricing tier for the App Service Plan."
  type        = string
  default     = "S1"
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan."
  type        = string
  default     = "S1"
}

variable "resource_group_name" {
  description = "The name of the resource group where the App Service will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  default     = "East US"
}