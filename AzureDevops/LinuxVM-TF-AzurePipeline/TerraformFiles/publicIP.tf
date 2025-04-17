resource "azurerm_public_ip" "localNamePIP1" {
    name = "LinuxVM1-PIP"
    resource_group_name = azurerm_resource_group.localNameRG123.name
    location = azurerm_resource_group.localNameRG123.location
    allocation_method = "Static"
}