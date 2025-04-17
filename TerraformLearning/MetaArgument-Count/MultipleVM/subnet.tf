resource "azurerm_subnet" "localNameSnet1" {
depends_on = [ azurerm_virtual_network.LocalNameVnet1 ]
name = "Snet1"
resource_group_name = azurerm_resource_group.LocalNameRG1.name
virtual_network_name = azurerm_virtual_network.LocalNameVnet1.name
address_prefixes = [ "10.0.0.0/24" ]

  
}

resource "azurerm_subnet" "localNameSnet2" {
depends_on = [ azurerm_virtual_network.LocalNameVnet1 ]
name = "Snet2"
resource_group_name = azurerm_resource_group.LocalNameRG1.name
virtual_network_name = azurerm_virtual_network.LocalNameVnet1.name
address_prefixes = [ "10.0.1.0/24" ]

  
}