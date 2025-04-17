resource "azurerm_virtual_network" "localNameVnet1" {
  name="Vnet1"
  location =  azurerm_resource_group.localNameRG123.location
  resource_group_name = azurerm_resource_group.localNameRG123.name
  address_space = [ "10.0.0.0/16" ]
}