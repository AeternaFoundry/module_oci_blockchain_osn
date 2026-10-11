output "blockchain_osns_id" {
  description = "Map of id values across all blockchain_osns, keyed the same as var.blockchain_osns except keys with no id are omitted"
  value       = { for k, v in oci_blockchain_osn.blockchain_osns : k => v.id if v.id != null && length(v.id) > 0 }
}
output "blockchain_osns_ad" {
  description = "Map of ad values across all blockchain_osns, keyed the same as var.blockchain_osns except keys with no ad are omitted"
  value       = { for k, v in oci_blockchain_osn.blockchain_osns : k => v.ad if v.ad != null && length(v.ad) > 0 }
}
output "blockchain_osns_blockchain_platform_id" {
  description = "Map of blockchain_platform_id values across all blockchain_osns, keyed the same as var.blockchain_osns except keys with no blockchain_platform_id are omitted"
  value       = { for k, v in oci_blockchain_osn.blockchain_osns : k => v.blockchain_platform_id if v.blockchain_platform_id != null && length(v.blockchain_platform_id) > 0 }
}
output "blockchain_osns_ocpu_allocation_param" {
  description = "Map of ocpu_allocation_param values across all blockchain_osns, keyed the same as var.blockchain_osns except keys with no ocpu_allocation_param are omitted"
  value       = { for k, v in oci_blockchain_osn.blockchain_osns : k => one(v.ocpu_allocation_param) if v.ocpu_allocation_param != null && length(v.ocpu_allocation_param) > 0 }
}
output "blockchain_osns_osn_key" {
  description = "Map of osn_key values across all blockchain_osns, keyed the same as var.blockchain_osns except keys with no osn_key are omitted"
  value       = { for k, v in oci_blockchain_osn.blockchain_osns : k => v.osn_key if v.osn_key != null && length(v.osn_key) > 0 }
}
output "blockchain_osns_state" {
  description = "Map of state values across all blockchain_osns, keyed the same as var.blockchain_osns except keys with no state are omitted"
  value       = { for k, v in oci_blockchain_osn.blockchain_osns : k => v.state if v.state != null && length(v.state) > 0 }
}

