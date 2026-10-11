output "project_cicd_catalogs_id" {
  description = "Map of id values across all project_cicd_catalogs, keyed the same as var.project_cicd_catalogs except keys with no id are omitted"
  value       = { for k, v in gitlab_project_cicd_catalog.project_cicd_catalogs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_cicd_catalogs_enabled" {
  description = "Map of enabled values across all project_cicd_catalogs, keyed the same as var.project_cicd_catalogs except keys with no enabled are omitted"
  value       = { for k, v in gitlab_project_cicd_catalog.project_cicd_catalogs : k => v.enabled if v.enabled != null }
}
output "project_cicd_catalogs_keep_settings_on_destroy" {
  description = "Map of keep_settings_on_destroy values across all project_cicd_catalogs, keyed the same as var.project_cicd_catalogs except keys with no keep_settings_on_destroy are omitted"
  value       = { for k, v in gitlab_project_cicd_catalog.project_cicd_catalogs : k => v.keep_settings_on_destroy if v.keep_settings_on_destroy != null }
}
output "project_cicd_catalogs_project" {
  description = "Map of project values across all project_cicd_catalogs, keyed the same as var.project_cicd_catalogs except keys with no project are omitted"
  value       = { for k, v in gitlab_project_cicd_catalog.project_cicd_catalogs : k => v.project if v.project != null && length(v.project) > 0 }
}

