resource "azurerm_servicebus_namespace" "servicebus" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku                           = var.sku
  capacity                      = var.capacity
  local_auth_enabled            = var.local_auth_enabled
  public_network_access_enabled = var.public_network_access_enabled
  minimum_tls_version           = var.minimum_tls_version

}

resource "azurerm_servicebus_topic" "servicebus_topic" {
  for_each = { for i in var.topic_details : i.topic_name => i}
  name = each.value.topic_name
  namespace_id = azurerm_servicebus_namespace.servicebus.id
  enable_partitioning = var.enable_partitioning
  depends_on = [
    azurerm_servicebus_namespace.servicebus
  ]
  
}