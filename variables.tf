variable "blockchain_osns" {
  description = <<EOT
Map of blockchain_osns, attributes below
Required:
    - ad
    - blockchain_platform_id
Optional:
    - ocpu_allocation_param (block):
        - ocpu_allocation_number (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    ad                     = string
    blockchain_platform_id = string
    ocpu_allocation_param = optional(object({
      ocpu_allocation_number = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

