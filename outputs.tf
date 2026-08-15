output "mssql_managed_databases_id" {
  description = "Map of id values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_managed_databases_long_term_retention_policy" {
  description = "Map of long_term_retention_policy values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => one(v.long_term_retention_policy) if v.long_term_retention_policy != null && length(v.long_term_retention_policy) > 0 }
}
output "mssql_managed_databases_managed_instance_id" {
  description = "Map of managed_instance_id values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.managed_instance_id if v.managed_instance_id != null && length(v.managed_instance_id) > 0 }
}
output "mssql_managed_databases_name" {
  description = "Map of name values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_managed_databases_point_in_time_restore" {
  description = "Map of point_in_time_restore values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => one(v.point_in_time_restore) if v.point_in_time_restore != null && length(v.point_in_time_restore) > 0 }
}
output "mssql_managed_databases_short_term_retention_days" {
  description = "Map of short_term_retention_days values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.short_term_retention_days if v.short_term_retention_days != null }
}
output "mssql_managed_databases_tags" {
  description = "Map of tags values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

