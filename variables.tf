variable "namespace_lookup" {
  description = <<EOT
Map of namespace_lookup, attributes below
Optional:
    - namespace
    - path
EOT

  type = map(object({
    namespace = optional(string)
    path      = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

