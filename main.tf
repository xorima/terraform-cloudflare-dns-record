data "cloudflare_zone" "zone" {
  name = var.record.domain_name
}
resource "cloudflare_record" "record" {
  name    = var.record.name
  value   = var.record.value
  type    = var.record.type
  comment = "Terraform managed record from module: cloudflare-record"
  ttl     = 1
  proxied = false
  zone_id = data.cloudflare_zone.zone.zone_id
}
