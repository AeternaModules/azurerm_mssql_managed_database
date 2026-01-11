variable "mssql_managed_databases" {
  description = <<EOT
Map of mssql_managed_databases, attributes below
Required:
    - managed_instance_id
    - name
Optional:
    - short_term_retention_days
    - tags
    - long_term_retention_policy (block):
        - immutable_backups_enabled (optional)
        - monthly_retention (optional)
        - week_of_year (optional)
        - weekly_retention (optional)
        - yearly_retention (optional)
    - point_in_time_restore (block):
        - restore_point_in_time (required)
        - source_database_id (required)
EOT

  type = map(object({
    managed_instance_id       = string
    name                      = string
    short_term_retention_days = optional(number, 7)
    tags                      = optional(map(string))
    long_term_retention_policy = optional(object({
      immutable_backups_enabled = optional(bool, false)
      monthly_retention         = optional(string)
      week_of_year              = optional(number)
      weekly_retention          = optional(string)
      yearly_retention          = optional(string)
    }))
    point_in_time_restore = optional(object({
      restore_point_in_time = string
      source_database_id    = string
    }))
  }))
}

