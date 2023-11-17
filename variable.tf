variable "record" {
  type = object({
    name        = string
    domain_name = string
    value       = string
    type        = string
  })
  description = "The record to be created"
}

locals {
  fqdn = "${var.record.name}.${var.record.domain_name}"
}
