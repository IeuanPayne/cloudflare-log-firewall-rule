variable "zone_id" {
  description = "(Required) The zone ID of the Cloudflare domain you want to deploy to."
}

variable "domain" {
  description = "(Required) The domain name this firewall rule will apply to."
}

variable "priority" {
  description = "(Required) Priority of the rule to be put into the list in the Cloudflare WebUI"
}