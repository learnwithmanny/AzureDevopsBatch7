resource "azurerm_app_service_plan" "appserviceplanlearninglab" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.LocalNameRG.location
  resource_group_name = azurerm_resource_group.LocalNameRG.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}