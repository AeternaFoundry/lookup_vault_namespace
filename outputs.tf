output "namespace_lookup_id" {
  description = "Map of id values across all namespace_lookup, keyed the same as var.namespace_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_namespace.namespace_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "namespace_lookup_custom_metadata" {
  description = "Map of custom_metadata values across all namespace_lookup, keyed the same as var.namespace_lookup except keys with no custom_metadata are omitted"
  value       = { for k, v in data.vault_namespace.namespace_lookup : k => v.custom_metadata if v.custom_metadata != null && length(v.custom_metadata) > 0 }
}
output "namespace_lookup_namespace" {
  description = "Map of namespace values across all namespace_lookup, keyed the same as var.namespace_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_namespace.namespace_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "namespace_lookup_namespace_id" {
  description = "Map of namespace_id values across all namespace_lookup, keyed the same as var.namespace_lookup except keys with no namespace_id are omitted"
  value       = { for k, v in data.vault_namespace.namespace_lookup : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "namespace_lookup_path" {
  description = "Map of path values across all namespace_lookup, keyed the same as var.namespace_lookup except keys with no path are omitted"
  value       = { for k, v in data.vault_namespace.namespace_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "namespace_lookup_path_fq" {
  description = "Map of path_fq values across all namespace_lookup, keyed the same as var.namespace_lookup except keys with no path_fq are omitted"
  value       = { for k, v in data.vault_namespace.namespace_lookup : k => v.path_fq if v.path_fq != null && length(v.path_fq) > 0 }
}

