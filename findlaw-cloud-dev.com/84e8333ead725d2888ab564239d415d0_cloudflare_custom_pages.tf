resource "cloudflare_custom_pages" "terraform_managed_resource_500_errors" {
  state   = "customized"
  type    = "500_errors"
  url     = "https://www.findlaw-cloud-dev.com/cloudflare-error-page/?siteName=FindLaw&statusCode=500"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}
