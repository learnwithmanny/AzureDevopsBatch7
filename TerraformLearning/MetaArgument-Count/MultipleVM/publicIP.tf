resource "azurerm_public_ip" "localNamePIP" {
    count = 2
    name = "PIP-VM-${count.index}"
    resource_group_name = azurerm_resource_group.LocalNameRG1.name
    location = azurerm_resource_group.LocalNameRG1.location
    allocation_method = "Static"
}