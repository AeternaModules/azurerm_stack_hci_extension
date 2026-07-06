output "stack_hci_extensions" {
  description = "All stack_hci_extension resources"
  value       = azurerm_stack_hci_extension.stack_hci_extensions
  sensitive   = true
}
output "stack_hci_extensions_arc_setting_id" {
  description = "List of arc_setting_id values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.arc_setting_id]
}
output "stack_hci_extensions_auto_upgrade_minor_version_enabled" {
  description = "List of auto_upgrade_minor_version_enabled values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.auto_upgrade_minor_version_enabled]
}
output "stack_hci_extensions_automatic_upgrade_enabled" {
  description = "List of automatic_upgrade_enabled values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.automatic_upgrade_enabled]
}
output "stack_hci_extensions_name" {
  description = "List of name values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.name]
}
output "stack_hci_extensions_protected_settings" {
  description = "List of protected_settings values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.protected_settings]
  sensitive   = true
}
output "stack_hci_extensions_publisher" {
  description = "List of publisher values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.publisher]
}
output "stack_hci_extensions_settings" {
  description = "List of settings values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.settings]
}
output "stack_hci_extensions_type" {
  description = "List of type values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.type]
}
output "stack_hci_extensions_type_handler_version" {
  description = "List of type_handler_version values across all stack_hci_extensions"
  value       = [for k, v in azurerm_stack_hci_extension.stack_hci_extensions : v.type_handler_version]
}

