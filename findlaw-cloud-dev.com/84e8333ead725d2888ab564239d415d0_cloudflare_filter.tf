resource "cloudflare_filter" "terraform_managed_resource_6b448a015e8040248395963a3c036c31" {
  expression = "(http.user_agent eq \"Mozilla/5.0 (compatible; R2D2-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; AdServer-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; Insight-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; PU-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; ReputationAPI-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; RatingsAPI-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; PPU-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; IPU-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; FLLD-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; SearchAPI-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; ProfileLambda-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; AudienceAds-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; SmokeTests-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; AdsMgmtProfileLambda-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; NuevoCerdo-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; FLFE-Testing-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; FLFE-Critical-Styles-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\")"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_9eefe05e6efe4bb4b51dee0dd960081e" {
  expression = "(ip.src in {34.196.205.3 52.73.128.139 3.210.227.115})"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_43f794889f8d4f2395651e4e9030ccdc" {
  expression = "(ip.src in $stripe_ips)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_fc8fa07b1dda4c9db4dfbca6624716da" {
  expression = "(ip.src in $aws_ips)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_bc72180f75c14633bc0f9f9679171f3b" {
  expression = "(http.user_agent eq \"Datadog/Synthetics\")"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_91a9c5cc42704916a91baae888270d16" {
  expression = "(ip.src eq 52.6.240.133)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_9cbf673a3b1440a6aa3dcf30dc4383c0" {
  expression = "(http.request.uri.query eq \"bypass_firewall=true\")"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_b7dc81e783db4d9da68908953bb701f3" {
  expression = "(http.host eq \"wp.findlaw-cloud-dev.com\" and not ip.src in $cloudflare_ips)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_0934271226a64a9aad43631efbceb825" {
  expression = "(ip.src in {0.0.0.0/0 ::/0})"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_3db10172aab84167abece3aaf553b932" {
  expression = "(ip.src in $zscaler_not_azure)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_c36d0d6b54964319a06108c92f7122e5" {
  expression = "(http.user_agent contains \"PTST\")"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_f5575af5e2fa483eb67192d2d1c6f34a" {
  expression = "(ip.src in $zscaler_azure)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_c9450198d2b141e7ac9cc738eab0e88d" {
  expression = "(ip.src in $tr_internal_ips)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_cc206901b8664f9c99fbe5ae85547514" {
  expression = "(ip.src in $observe_point)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_09ac9a11052e46ffa78dfa6fa1082c7c" {
  expression = "(ip.src in $epam_ips)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_e6e6096b3f624819a76ab308509c61a7" {
  expression = "(ip.src in $cloudflare_ips) or (http.referer contains \"cloudflare\")"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_filter" "terraform_managed_resource_90bacf4e2bf34c8d98ae88655adfdc8b" {
  expression = "(ip.src in $browser_stack) or (ip.src in $browserstack_ips)"
  paused     = false
  zone_id    = "b8b8985303e1be08c2fa2c2c45e1ff17"
}
