output "environment_lookup_id" {
  description = "Map of id values across all environment_lookup, keyed the same as var.environment_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_environment.environment_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "environment_lookup_display_name" {
  description = "Map of display_name values across all environment_lookup, keyed the same as var.environment_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.confluent_environment.environment_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "environment_lookup_resource_name" {
  description = "Map of resource_name values across all environment_lookup, keyed the same as var.environment_lookup except keys with no resource_name are omitted"
  value       = { for k, v in data.confluent_environment.environment_lookup : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}
output "environment_lookup_stream_governance" {
  description = "Map of stream_governance values across all environment_lookup, keyed the same as var.environment_lookup except keys with no stream_governance are omitted"
  value       = { for k, v in data.confluent_environment.environment_lookup : k => v.stream_governance if v.stream_governance != null && length(v.stream_governance) > 0 }
}

