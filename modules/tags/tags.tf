variable "base_tags" {
  description = "Base tags provided to the module."
  type        = map(string)
}

variable "additional_tags" {
  description = "Additional tags that can be merged with base tags."
  type        = map(string)
  default     = {}
}

output "combined_tags" {
  description = "Combined set of tags."
  value       = merge(var.base_tags, var.additional_tags)
}
