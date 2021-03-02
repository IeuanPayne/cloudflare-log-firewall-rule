resource "cloudflare_filter" "common_log_firewall_filter" {
  zone_id = var.zone_id
  description = ""
  expression = "(http.host contains \"${var.domain}\")"  
}

resource "cloudflare_firewall_rule" "common_log_firewall_rule" {
  zone_id = var.zone_id
  description = "Log - ${var.domain} access"
  filter_id = "${cloudflare_filter.common_log_firewall_filter.id}"
  action = "log"
  priority = var.priority
  
}