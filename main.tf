data "confluent_environment" "environment_lookup" {
  for_each = var.environment_lookup

  display_name = each.value.display_name
}

