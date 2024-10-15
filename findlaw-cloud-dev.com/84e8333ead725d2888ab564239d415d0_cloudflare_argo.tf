resource "cloudflare_argo" "terraform_managed_resource_smart_routing" {
  smart_routing  = "off"
  tiered_caching = "on"
  zone_id        = "b8b8985303e1be08c2fa2c2c45e1ff17"
}
