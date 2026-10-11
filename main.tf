resource "gitlab_project_cicd_catalog" "project_cicd_catalogs" {
  for_each = var.project_cicd_catalogs

  enabled                  = each.value.enabled
  project                  = each.value.project
  keep_settings_on_destroy = each.value.keep_settings_on_destroy
}

