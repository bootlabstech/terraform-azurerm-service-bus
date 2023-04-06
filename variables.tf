variable "name" {
  description = "The name of the Redis instance."
  type        = string

}
variable "location" {
  description = "The location of the resource group."
  type        = string

}
variable "resource_group_name" {
  description = "The name of the Resource group"
  type        = string

}
variable "capacity" {
  description = "Specifies the capacity. When sku is Premium, capacity can be 1, 2, 4, 8 or 16. When sku is Basic or Standard, capacity can be 0 only."
  type        = number
}
variable "local_auth_enabled" {
  description = "Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to true."
  type        = bool
  default     = true

}
variable "public_network_access_enabled" {
  description = "s public network access enabled for the Service Bus Namespace? Defaults to true."
  type        = bool
  default     = true

}
variable "minimum_tls_version" {
  description = "The minimum supported TLS version for this Service Bus Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2."
  type        = number
  default     = 1.2

}
variable "sku" {
  description = "The minimum supported TLS version for this Service Bus Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2."
  type        = string

}
variable "name" {
  description = "The minimum supported TLS version for this Service Bus Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2."
  type        = number

}
variable "enable_partitioning" {
  description = "The minimum supported TLS version for this Service Bus Namespace. Valid values are: 1.0, 1.1 and 1.2. The current default minimum TLS version is 1.2."
  type        = string

}