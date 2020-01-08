provider "azurerm" {
  alias = "azure1"
}
provider "azurerm" {
  alias = "azure2"
}
#resource "azurerm_resource_group" "main" {
#  name     = "terraform-multi-subscription"
#  location = var.location
#}
resource "azurerm_resource_group" "main1" {
  name     = "terraform-multi-subscription"
  location = var.location
  
  providers = {
    azurerm = azurerm.azure1
  }
}
resource "azurerm_resource_group" "main2" {
  name     = "terraform-multi-subscription"
  location = var.location
  
  providers = {
    azurerm = azurerm.azure2
  }
}
