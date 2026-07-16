output "stack_hci_extensions_id" {
  description = "Map of id values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stack_hci_extensions_arc_setting_id" {
  description = "Map of arc_setting_id values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.arc_setting_id if v.arc_setting_id != null && length(v.arc_setting_id) > 0 }
}
output "stack_hci_extensions_auto_upgrade_minor_version_enabled" {
  description = "Map of auto_upgrade_minor_version_enabled values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.auto_upgrade_minor_version_enabled if v.auto_upgrade_minor_version_enabled != null }
}
output "stack_hci_extensions_automatic_upgrade_enabled" {
  description = "Map of automatic_upgrade_enabled values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.automatic_upgrade_enabled if v.automatic_upgrade_enabled != null }
}
output "stack_hci_extensions_name" {
  description = "Map of name values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stack_hci_extensions_protected_settings" {
  description = "Map of protected_settings values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.protected_settings if v.protected_settings != null && length(v.protected_settings) > 0 }
  sensitive   = true
}
output "stack_hci_extensions_publisher" {
  description = "Map of publisher values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.publisher if v.publisher != null && length(v.publisher) > 0 }
}
output "stack_hci_extensions_settings" {
  description = "Map of settings values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.settings if v.settings != null && length(v.settings) > 0 }
}
output "stack_hci_extensions_type" {
  description = "Map of type values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.type if v.type != null && length(v.type) > 0 }
}
output "stack_hci_extensions_type_handler_version" {
  description = "Map of type_handler_version values across all stack_hci_extensions, keyed the same as var.stack_hci_extensions"
  value       = { for k, v in azurerm_stack_hci_extension.stack_hci_extensions : k => v.type_handler_version if v.type_handler_version != null && length(v.type_handler_version) > 0 }
}

