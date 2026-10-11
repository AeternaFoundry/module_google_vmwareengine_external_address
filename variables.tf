variable "vmwareengine_external_addresses" {
  description = <<EOT
Map of vmwareengine_external_addresses, attributes below
Required:
    - internal_ip
    - name
    - parent
Optional:
    - deletion_policy
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    internal_ip     = string
    name            = string
    parent          = string
    deletion_policy = optional(string)
    description     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

