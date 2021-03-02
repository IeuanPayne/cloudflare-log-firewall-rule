output "cloudflare_filter_expression" {
  description = "The expression of what will be filtered in the firewall rule"
  value       = cloudflare_filter.common_log_firewall_filter.expression
}
