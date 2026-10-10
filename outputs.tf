output "datasync_location_object_storages_id" {
  description = "Map of id values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasync_location_object_storages_access_key" {
  description = "Map of access_key values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.access_key if v.access_key != null && length(v.access_key) > 0 }
}
output "datasync_location_object_storages_agent_arns" {
  description = "Map of agent_arns values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.agent_arns if v.agent_arns != null && length(v.agent_arns) > 0 }
}
output "datasync_location_object_storages_arn" {
  description = "Map of arn values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "datasync_location_object_storages_bucket_name" {
  description = "Map of bucket_name values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.bucket_name if v.bucket_name != null && length(v.bucket_name) > 0 }
}
output "datasync_location_object_storages_region" {
  description = "Map of region values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.region if v.region != null && length(v.region) > 0 }
}
output "datasync_location_object_storages_secret_key" {
  description = "Map of secret_key values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.secret_key if v.secret_key != null && length(v.secret_key) > 0 }
  sensitive   = true
}
output "datasync_location_object_storages_server_certificate" {
  description = "Map of server_certificate values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.server_certificate if v.server_certificate != null && length(v.server_certificate) > 0 }
}
output "datasync_location_object_storages_server_hostname" {
  description = "Map of server_hostname values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.server_hostname if v.server_hostname != null && length(v.server_hostname) > 0 }
}
output "datasync_location_object_storages_server_port" {
  description = "Map of server_port values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.server_port if v.server_port != null }
}
output "datasync_location_object_storages_server_protocol" {
  description = "Map of server_protocol values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.server_protocol if v.server_protocol != null && length(v.server_protocol) > 0 }
}
output "datasync_location_object_storages_subdirectory" {
  description = "Map of subdirectory values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.subdirectory if v.subdirectory != null && length(v.subdirectory) > 0 }
}
output "datasync_location_object_storages_tags" {
  description = "Map of tags values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "datasync_location_object_storages_tags_all" {
  description = "Map of tags_all values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "datasync_location_object_storages_uri" {
  description = "Map of uri values across all datasync_location_object_storages, keyed the same as var.datasync_location_object_storages"
  value       = { for k, v in aws_datasync_location_object_storage.datasync_location_object_storages : k => v.uri if v.uri != null && length(v.uri) > 0 }
}

