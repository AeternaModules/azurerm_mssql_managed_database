output "mssql_managed_databases" {
  description = "All mssql_managed_database resources"
  value       = azurerm_mssql_managed_database.mssql_managed_databases
}
output "mssql_managed_databases_long_term_retention_policy" {
  description = "List of long_term_retention_policy values across all mssql_managed_databases"
  value       = [for k, v in azurerm_mssql_managed_database.mssql_managed_databases : v.long_term_retention_policy]
}
output "mssql_managed_databases_managed_instance_id" {
  description = "List of managed_instance_id values across all mssql_managed_databases"
  value       = [for k, v in azurerm_mssql_managed_database.mssql_managed_databases : v.managed_instance_id]
}
output "mssql_managed_databases_name" {
  description = "List of name values across all mssql_managed_databases"
  value       = [for k, v in azurerm_mssql_managed_database.mssql_managed_databases : v.name]
}
output "mssql_managed_databases_point_in_time_restore" {
  description = "List of point_in_time_restore values across all mssql_managed_databases"
  value       = [for k, v in azurerm_mssql_managed_database.mssql_managed_databases : v.point_in_time_restore]
}
output "mssql_managed_databases_short_term_retention_days" {
  description = "List of short_term_retention_days values across all mssql_managed_databases"
  value       = [for k, v in azurerm_mssql_managed_database.mssql_managed_databases : v.short_term_retention_days]
}
output "mssql_managed_databases_tags" {
  description = "List of tags values across all mssql_managed_databases"
  value       = [for k, v in azurerm_mssql_managed_database.mssql_managed_databases : v.tags]
}

