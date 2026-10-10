variable "datasync_location_object_storages" {
  description = <<EOT
Map of datasync_location_object_storages, attributes below
Required:
    - bucket_name
    - server_hostname
Optional:
    - access_key
    - agent_arns
    - region
    - secret_key
    - server_certificate
    - server_port
    - server_protocol
    - subdirectory
    - tags
    - tags_all
EOT

  type = map(object({
    bucket_name        = string
    server_hostname    = string
    access_key         = optional(string)
    agent_arns         = optional(set(string))
    region             = optional(string)
    secret_key         = optional(string)
    server_certificate = optional(string)
    server_port        = optional(number)
    server_protocol    = optional(string)
    subdirectory       = optional(string)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_object_storages : (
        length(v.server_hostname) >= 0 && length(v.server_hostname) <= 255
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_object_storages : (
        v.server_port == null || (v.server_port >= 1 && v.server_port <= 65535)
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_object_storages : (
        v.subdirectory == null || (length(v.subdirectory) >= 1 && length(v.subdirectory) <= 4096)
      )
    ])
    error_message = "must be between 1 and 4096 characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

