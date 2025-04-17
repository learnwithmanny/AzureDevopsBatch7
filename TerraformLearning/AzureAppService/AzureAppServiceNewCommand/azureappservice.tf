resource "azurerm_linux_web_app" "azureappservice" {
  name                = "linuxappservice"
  resource_group_name = azurerm_resource_group.LocalNameRG.name
  location            = azurerm_resource_group.LocalNameRG.location
  service_plan_id     = azurerm_app_service_plan.appserviceplanlearninglab.id

  site_config {}
}