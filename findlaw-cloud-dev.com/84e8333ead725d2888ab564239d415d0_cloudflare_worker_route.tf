resource "cloudflare_worker_route" "terraform_managed_resource_8260de846a014f79913fa7c7c1c66d85" {
  pattern = "*pu.findlaw-cloud-dev.com/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_702725990736440f86b2a9237c05192c" {
  pattern     = "*.findlaw-cloud-dev.com/queue/consumers/*"
  script_name = "findlaw-consumers-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_f83732d448c343178f7528386d871f54" {
  pattern     = "*.findlaw-cloud-dev.com/queue/*"
  script_name = "findlaw-queues-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_fa3372d0bf9146eb8c75868f1b0243a0" {
  pattern = "*.findlaw-cloud-dev.com/v1/geo-cache/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_69637118032e453cae4edb2948751132" {
  pattern = "https://attorneyimages.findlaw-cloud-dev.com/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_f7f91653535d4f48ad5a7fd4d2711795" {
  pattern = "https://files.findlaw-cloud-dev.com/fs-previews-200x200/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_9011fb46ae8943edb22f2338a19ecf4d" {
  pattern = "*adserver.findlaw-cloud-dev.com/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_de595bc26531455d96a0180bb019a3f5" {
  pattern = "*reputationapi.findlaw-cloud-dev.com/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_15f15394cdd745c0bcd60685bd1cedf5" {
  pattern = "sports.findlaw-cloud-dev.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_1f2899dd5acb4383a96cf01da0a22327" {
  pattern = "www.sports.findlaw-cloud-dev.com"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_75e4dca31b5542ab93666357b4875d07" {
  pattern = "https://files.findlaw-cloud-dev.com/thumbnails/*"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_8b2bfc99af6942e983cb9b9ee1c9c4ec" {
  pattern     = "https://lawyers.findlaw-cloud-dev.com/*"
  script_name = "findlaw-directory-new-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_6fec7d623fab4383a29315d0f885cf7f" {
  pattern     = "*attorneys.findlaw-cloud-dev.com/flstats/v1/stats*"
  script_name = "findlaw-directory-new-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_00cbeb6f27d14b3eb77f75af49ef9441" {
  pattern     = "*.findlaw-cloud-dev.com/datadog/*"
  script_name = "findlaw-datadog-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_864819a675dd460bae155fc411834105" {
  pattern     = "https://www.findlaw-cloud-dev.com/queues/seochecks/*"
  script_name = "findlaw-seo-checks-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_8ab0b1210fb140ae9ab6c0ff2e86f4fa" {
  pattern     = "https://www.findlaw-cloud-dev.com/randytest"
  script_name = "randytest"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_3f3e6447afe14ce0b1aa5fb57c3037d0" {
  pattern     = "terraformtest.findlaw-cloud-dev.com/*"
  script_name = "terraform_worker_test_dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_1d73640bc1744a3d8f30efeb20b1d936" {
  pattern     = "https://pview.findlaw-cloud-dev.com/*"
  script_name = "findlaw-directory-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_2032671b07f94eb3af46df5633d1a989" {
  pattern     = "https://wldimages.findlaw-cloud-dev.com/robots.txt"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_b51c93e83df04d9cb29b6e6630e3b180" {
  pattern     = "https://video-transcripts.findlaw-cloud-dev.com/robots.txt"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_cff25ace5ed34e508c9e7bc064e580f3" {
  pattern     = "*pu.findlaw-cloud-dev.com/static/c/images/*"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_90895987b7ed4e2986bdf0be49d74f43" {
  pattern     = "https://attorneys.findlaw-cloud-dev.com/internaltrack.png"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_88e2b9b7cb024f799aa9ff6d39d0334b" {
  pattern     = "https://attorneys.findlaw-cloud-dev.com/robots.txt"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_dbd11f3c39274ce1bebfb6b5b503c098" {
  pattern     = "https://attorneys.findlaw-cloud-dev.com/call-tracking/*"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_e9dc3b43d9444167b8d2b01ac4d42e77" {
  pattern     = "https://attorneys.findlaw-cloud-dev.com/flt/*"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_3a5d751bd17240e981a4d19e6963830e" {
  pattern     = "http://attorney.findlaw-cloud-dev.com/*"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_worker_route" "terraform_managed_resource_3771998d29b543dab0165ef59848a48b" {
  pattern     = "*.findlaw-cloud-dev.com/*"
  script_name = "findlaw-default-dev"
  zone_id     = "b8b8985303e1be08c2fa2c2c45e1ff17"
}
