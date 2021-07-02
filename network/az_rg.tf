/*
AzureRM Terraform Cloud Sample Tutorial.
Resource Group
*/
resource "azurerm_resource_group" "bozo" {
  name     = var.name
  location = var.location
}
