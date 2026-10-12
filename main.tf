data "vault_namespace" "namespace_lookup" {
  for_each = var.namespace_lookup

  namespace = each.value.namespace
  path      = each.value.path
}

