resource "oci_blockchain_osn" "blockchain_osns" {
  for_each = var.blockchain_osns

  ad                     = each.value.ad
  blockchain_platform_id = each.value.blockchain_platform_id

  dynamic "ocpu_allocation_param" {
    for_each = each.value.ocpu_allocation_param != null ? [each.value.ocpu_allocation_param] : []
    content {
      ocpu_allocation_number = ocpu_allocation_param.value.ocpu_allocation_number
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

