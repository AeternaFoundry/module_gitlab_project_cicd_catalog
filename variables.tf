variable "project_cicd_catalogs" {
  description = <<EOT
Map of project_cicd_catalogs, attributes below
Required:
    - enabled
    - project
Optional:
    - keep_settings_on_destroy
EOT

  type = map(object({
    enabled                  = bool
    project                  = string
    keep_settings_on_destroy = optional(bool)
  }))
}

