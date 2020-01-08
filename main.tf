provider "azurerm" {
  alias = "azure1"
}
provider "azurerm" {
  alias = "azure2"
}
#resource "azurerm_resource_group" "main" {
#  name     = "terraform-multi-subscription"
#  location = "North Central US"
#}
resource "azurerm_resource_group" "main1" {
  name     = "terraform-multi-subscription1"
  location = "North Central US"
  
  provider = azurerm.azure1
}
resource "azurerm_resource_group" "main2" {
  name     = "terraform-multi-subscription2"
  location = "North Central US"
  
  provider = azurerm.azure2
}
