resource "cloudflare_firewall_rule" "terraform_managed_resource_94592ee24e634b9fb83f04fd9e6cddfb" {
  action      = "block"
  description = "Block wp subdomain non CF traffic"
  filter_id   = cloudflare_filter.terraform_managed_resource_b7dc81e783db4d9da68908953bb701f3.id
  paused      = false
  priority    = 500
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_9d97e4a7e7aa4a2b9e5e3688bf97486c" {
  action      = "allow"
  description = "Allow Browser Stack"
  filter_id   = cloudflare_filter.terraform_managed_resource_90bacf4e2bf34c8d98ae88655adfdc8b.id
  paused      = false
  priority    = 1000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_6ac9d8bc69eb4ac1b2ecfc52179f0b7c" {
  action      = "allow"
  description = "Allow Cloudflare"
  filter_id   = cloudflare_filter.terraform_managed_resource_e6e6096b3f624819a76ab308509c61a7.id
  paused      = false
  priority    = 2000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_eff82a13f1f04b6b8d466275fc528338" {
  action      = "allow"
  description = "Allow EPAM"
  filter_id   = cloudflare_filter.terraform_managed_resource_09ac9a11052e46ffa78dfa6fa1082c7c.id
  paused      = false
  priority    = 3000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_eb7d45c356c0437b95f2be50a4b0b7ea" {
  action      = "allow"
  description = "Allow Observe Point"
  filter_id   = cloudflare_filter.terraform_managed_resource_cc206901b8664f9c99fbe5ae85547514.id
  paused      = false
  priority    = 4000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_3316c2f08b824da6a11ce524d7e30eba" {
  action      = "allow"
  description = "Allow TR Network"
  filter_id   = cloudflare_filter.terraform_managed_resource_c9450198d2b141e7ac9cc738eab0e88d.id
  paused      = false
  priority    = 5000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_b348e818062e4cac9afc77057c31e4f9" {
  action      = "allow"
  description = "Allow Zscaler Azure"
  filter_id   = cloudflare_filter.terraform_managed_resource_f5575af5e2fa483eb67192d2d1c6f34a.id
  paused      = false
  priority    = 6000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_752107e66e074afd93fb61986a370f30" {
  action      = "allow"
  description = "Allow Speedcurve"
  filter_id   = cloudflare_filter.terraform_managed_resource_c36d0d6b54964319a06108c92f7122e5.id
  paused      = false
  priority    = 7000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_9e81b071275e41f2854335c3f4d4d96a" {
  action      = "allow"
  description = "Allow Zscaler Other until Azure Setup"
  filter_id   = cloudflare_filter.terraform_managed_resource_3db10172aab84167abece3aaf553b932.id
  paused      = false
  priority    = 8000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_722292fe1b014f33894b5fc9b8cac357" {
  action      = "allow"
  description = "Bypass on param"
  filter_id   = cloudflare_filter.terraform_managed_resource_9cbf673a3b1440a6aa3dcf30dc4383c0.id
  paused      = false
  priority    = 8500
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_a7771dc53ee844b29a0e63034d0a63e1" {
  action      = "allow"
  description = "DIY allow Cludo Crawlers"
  filter_id   = cloudflare_filter.terraform_managed_resource_91a9c5cc42704916a91baae888270d16.id
  paused      = false
  priority    = 9500
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_6c523de896124337935d1d71a593b010" {
  action      = "allow"
  description = "DataDog"
  filter_id   = cloudflare_filter.terraform_managed_resource_bc72180f75c14633bc0f9f9679171f3b.id
  paused      = false
  priority    = 10500
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_e00b98d7675f4a12a3e3930fb7f56564" {
  action      = "allow"
  description = "Allow AWS"
  filter_id   = cloudflare_filter.terraform_managed_resource_fc8fa07b1dda4c9db4dfbca6624716da.id
  paused      = false
  priority    = 11500
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_cb409020454c4663afb16b86ce0a67e2" {
  action      = "allow"
  description = "Allow Internal API Calls by User Agent"
  filter_id   = cloudflare_filter.terraform_managed_resource_6b448a015e8040248395963a3c036c31.id
  paused      = false
  priority    = 12000
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_669698881e2e46ba85e55bb4d6fec802" {
  action      = "block"
  description = "Block Everything Else"
  filter_id   = cloudflare_filter.terraform_managed_resource_0934271226a64a9aad43631efbceb825.id
  paused      = false
  priority    = 12500
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_06899f656e884fd78d7afa6965a2ff13" {
  action      = "allow"
  description = "Allow Stripe"
  filter_id   = cloudflare_filter.terraform_managed_resource_43f794889f8d4f2395651e4e9030ccdc.id
  paused      = false
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_firewall_rule" "terraform_managed_resource_e8cc95a9a9c3492cb72b848f116e5f90" {
  action      = "allow"
  description = "Allow AMS"
  filter_id   = cloudflare_filter.terraform_managed_resource_9eefe05e6efe4bb4b51dee0dd960081e.id
  paused      = false
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}
