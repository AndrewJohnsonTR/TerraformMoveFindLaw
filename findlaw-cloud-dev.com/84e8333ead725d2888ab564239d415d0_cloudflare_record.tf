resource "cloudflare_record" "terraform_managed_resource_fb48360f97b6e6a5095ffe48f18f1e61" {
  name    = "findlaw-cloud-dev.com"
  proxied = true
  ttl     = 1
  value   = "35.196.26.179"
  type    = "A"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_00b74e7cf1dff9c43309e2a9ee733d63" {
  name    = "_738903f29e12fad022d775f752312f10"
  proxied = false
  ttl     = 1
  value   = "41e0e2a5e41f11d5dae3c133acfbe61d.7da5938d19f69fb71031fddc158fb4a1.sectigo.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_3d4816b3d20ec5f187c4a416bab53bc5" {
  name    = "adserver"
  proxied = true
  ttl     = 1
  value   = "adserver-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_1aad08ec2c7a21884b6a82fb31f23e83" {
  name    = "adsmanagement"
  proxied = false
  ttl     = 1
  value   = "adsmgmt-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_eaf1104f8076a5149e483ebee07aa9fa" {
  name    = "archive"
  proxied = true
  ttl     = 1
  value   = "abilitydev.wpengine.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_e50d1fc259abaf35a8df7af20829cced" {
  name    = "archivewww"
  proxied = true
  ttl     = 1
  value   = "archive.flportaldev.int.thomsonreuters.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_807a651a533420ff4e66f51497025b6a" {
  name    = "attorneys"
  proxied = true
  ttl     = 1
  value   = "findlaw-dev.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_ccb4e1406f31c0a2602625efcbe20e58" {
  name    = "beta"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "abilitydev.wpengine.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_5ce84d19d9e25fe9fc0a622cc3e9a46f" {
  name    = "blogs"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "abilitydev.wpengine.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_c9f12142c9ef5d8d51fe1d13325c82bc" {
  name    = "chatbotservice"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "chatbotservice-aidc-ci-use1.1129.aws.thomsonreuters.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_0becef8dd69d56e28044d5409aeae572" {
  name    = "commonlaw"
  proxied = true
  ttl     = 1
  value   = "abilitydev.wpengine.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_c7cb0c8b266b0f9489d323fe20332737" {
  name    = "contractexpress"
  proxied = false
  ttl     = 1
  value   = "findlaw-dev.contractexpress.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_709fb4c20e3d8cd308796ef2505ebfa6" {
  name    = "_fa72384c0c69fb3379facbc1df048d58"
  proxied = false
  ttl     = 1
  value   = "c4f509ed72406286a60a5976ce060f66.fe84e91633eb892e207c2ff31b3692fd.sectigo.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_638b4687c73a572144e8a761a9c5d9b4" {
  name    = "files"
  proxied = true
  value   = "d3j0810e9zxqg7.cloudfront.net"
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_33fe42565f77d60b6b54797ffe0f4020" {
  name    = "flcas"
  proxied = true
  value   = "flcas-fltech-main-ci-use1.1129.aws.thomsonreuters.com"
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_dd8af4a69e552ae887cb79bfb105be74" {
  name    = "forms"
  proxied = true
  ttl     = 1
  value   = "abilitydev.wpengine.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_2567a5784a7187c1cfd4c3f986fb57e1" {
  name    = "fweb"
  proxied = true
  ttl     = 1
  value   = "d2e72ilkz3m81c.cloudfront.net"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_8ae20cb01351c6bbd4c0ef367525544e" {
  name    = "images"
  proxied = true
  ttl     = 1
  value   = "d2e72ilkz3m81c.cloudfront.net"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_2b813bf5f63e7fa718f598fcd2d0b467" {
  name    = "justice"
  proxied = true
  ttl     = 1
  value   = "d2e72ilkz3m81c.cloudfront.net"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_ad5bde2a111b4a1d6b97586f3c156dcb" {
  comment = "wp.wpenginepowered.com"
  name    = "lawyermarketing"
  proxied = true
  ttl     = 1
  value   = "abilitydev.wpenginepowered.com"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_c75aa903bbc729b314ddf7cebf9aa866" {
  name    = "lawyers"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "directory-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_e1c4712a6efa0c0360c28d6878f703b1" {
  name    = "lawyersorigin"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "directory-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_667d7c82587b31f4f9a163cd2a417c10" {
  name    = "profileupdate"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  value   = "wp.wpenginepowered.com"
}

resource "cloudflare_record" "terraform_managed_resource_89ddaf10138e23d035efd8b87022f03e" {
  name    = "pu"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "ldprofileupdate-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_6c308e0edf7cd74103ecf79b981aa72c" {
  name    = "pu-green"
  proxied = true
  ttl     = 1
  value   = "d6w4yppcq6ggo.cloudfront.net"
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_12eee6c4f4c02b998ed406274ffef330" {
  name    = "ratingsandreviewsadmin"
  proxied = true
  value   = "d162ork9aqw314.cloudfront.net"
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_d9e06d04ffeb7183e825e3a112cfb4f6" {
  name    = "ratingsandreviewsadmin-green"
  value   = "dgrsiuy9kf9jn.cloudfront.net"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_7d629dd2484cddf621c7143ffe8e2577" {
  name    = "ratingsapi"
  value   = "ratingsapi-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_2eb0c17a1c783535b4d9895c6979779b" {
  name    = "reputationadmin"
  value   = "d1dsmxx8qzr8xv.cloudfront.net"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_6586201bad6282ebe9ddcc80620a2fd4" {
  name    = "reputationapi"
  value   = "reptationapi-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_1fcee13f9c5e3cbaef758862d54712c0" {
  value   = "stats-fldir-main-ci-use1.1129.aws.thomsonreuters.com"
  name    = "stats2"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_f0ee9e05e6fb8bbc5710fb4dc8bb1cf4" {
  name    = "wp"
  proxied = true
  value   = "abilitydev.wpengine.com"
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_8e94f7a4f79275de22a8131571d313f7" {
  name    = "www"
  value   = "abilitydev.wpengine.com"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_480af57ab5da1c08eea752cbadca6765" {
  name    = "_dmarc"
  proxied = false
  value   = "v=DMARC1; p=reject; sp=reject; aspf=s; pct=100"
  ttl     = 1
  type    = "TXT"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_record" "terraform_managed_resource_b337ec446141b01c8fc7603fe083f270" {
  name    = "findlaw-cloud-dev.com"
  proxied = false
  value   = "v=spf1 -all"
  ttl     = 1
  type    = "TXT"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}
