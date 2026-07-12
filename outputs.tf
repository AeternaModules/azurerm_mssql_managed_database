output "mssql_managed_databases_long_term_retention_policy" {
  description = "Map of long_term_retention_policy values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.long_term_retention_policy }
}
output "mssql_managed_databases_managed_instance_id" {
  description = "Map of managed_instance_id values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.managed_instance_id }
}
output "mssql_managed_databases_name" {
  description = "Map of name values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.name }
}
output "mssql_managed_databases_point_in_time_restore" {
  description = "Map of point_in_time_restore values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.point_in_time_restore }
}
output "mssql_managed_databases_short_term_retention_days" {
  description = "Map of short_term_retention_days values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.short_term_retention_days }
}
output "mssql_managed_databases_tags" {
  description = "Map of tags values across all mssql_managed_databases, keyed the same as var.mssql_managed_databases"
  value       = { for k, v in azurerm_mssql_managed_database.mssql_managed_databases : k => v.tags }
}

