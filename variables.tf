variable "environment_lookup" {
  description = <<EOT
Map of environment_lookup, attributes below
Optional:
    - display_name
EOT

  type = map(object({
    display_name = optional(string)
  }))
}

