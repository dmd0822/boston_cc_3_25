variable "storage_account_name" {
  description = "The name of the storage account. It must be between 3 and 24 characters in length and can contain only lowercase letters and numbers."
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "access_tier" {
  description = "The access tier for the storage account. Can be 'Hot', 'Cool', or 'Archive'."
  type        = string
  default     = "Hot"
}