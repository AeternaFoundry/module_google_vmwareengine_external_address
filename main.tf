resource "google_vmwareengine_external_address" "vmwareengine_external_addresses" {
  for_each = var.vmwareengine_external_addresses

  internal_ip     = each.value.internal_ip
  name            = each.value.name
  parent          = each.value.parent
  deletion_policy = each.value.deletion_policy
  description     = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

