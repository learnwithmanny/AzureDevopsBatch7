resource "azurerm_virtual_network" "LocalNameVnet1" {

resource_group_name = azurerm_resource_group.LocalNameRG1.name
location = azurerm_resource_group.LocalNameRG1.location
address_space = [ "10.0.0.0/22" ]
name = "vnet1"

  
}