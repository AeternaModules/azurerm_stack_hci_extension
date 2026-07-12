data "azurerm_key_vault_secret" "protected_settings" {
  for_each     = { for k, v in var.stack_hci_extensions : k => v if v.protected_settings_key_vault_id != null && v.protected_settings_key_vault_secret_name != null }
  name         = each.value.protected_settings_key_vault_secret_name
  key_vault_id = each.value.protected_settings_key_vault_id
}
resource "azurerm_stack_hci_extension" "stack_hci_extensions" {
  for_each = var.stack_hci_extensions

  arc_setting_id                     = each.value.arc_setting_id
  name                               = each.value.name
  publisher                          = each.value.publisher
  type                               = each.value.type
  auto_upgrade_minor_version_enabled = each.value.auto_upgrade_minor_version_enabled
  automatic_upgrade_enabled          = each.value.automatic_upgrade_enabled
  protected_settings                 = each.value.protected_settings != null ? each.value.protected_settings : try(data.azurerm_key_vault_secret.protected_settings[each.key].value, null)
  settings                           = each.value.settings
  type_handler_version               = each.value.type_handler_version
}

