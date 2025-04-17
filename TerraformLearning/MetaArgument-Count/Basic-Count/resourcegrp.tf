resource "azurerm_resource_group" "LocalNameRG" {
  count = 4
  name = "learninglab-${count.index}"
  location = "centralindia"
}




