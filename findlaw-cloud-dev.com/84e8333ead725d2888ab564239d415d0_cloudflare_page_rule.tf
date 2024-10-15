resource "cloudflare_page_rule" "terraform_managed_resource_e839a686c1f4267a8c7e7bd1b9698d7d" {
  priority = 28
  status   = "active"
  target   = "https://findlaw-cloud-dev.com/forms*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    forwarding_url {
      status_code = 302
      url         = "https://files.findlaw.com/maintenance.html"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_e806cca484f433792330ebff805501eb" {
  priority = 27
  status   = "disabled"
  target   = "www.findlaw-cloud-dev.com/forms?*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_fd7f99d590d25320fa950dbb0ac25577" {
  priority = 26
  status   = "disabled"
  target   = "www.findlaw-cloud-dev.com/forms/account/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level          = "bypass"
    host_header_override = "forms.findlaw-cloud-dev.com"
    resolve_override     = "forms.findlaw-cloud-dev.com"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_7237e400be0df932d72832c0d048ed6c" {
  priority = 25
  status   = "disabled"
  target   = "www.findlaw-cloud-dev.com/forms*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    host_header_override = "forms.findlaw-cloud-dev.com"
    resolve_override     = "forms.findlaw-cloud-dev.com"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_45a9b29dc9a2105ceeb0f44af94329b2" {
  priority = 24
  status   = "disabled"
  target   = "www.findlaw-cloud-dev.com/lawyer-marketing*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    host_header_override = "lawyermarketing.findlaw-cloud-dev.com"
    resolve_override     = "lawyermarketing.findlaw-cloud-dev.com"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_566dfd0db4e3f8b092b16c6b664b107c" {
  priority = 23
  status   = "active"
  target   = "forms.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.findlaw-cloud-dev.com/forms/$1"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_18a739aa43e3719a2d30fa52642ead1a" {
  priority = 22
  status   = "active"
  target   = "lawyermarketing.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.findlaw-cloud-dev.com/lawyer-marketing/$1"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_9a8ae65ace9ac217c1d752067169ba26" {
  priority = 21
  status   = "active"
  target   = "https://www.findlaw-cloud-dev.com/randytest*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
    ssl         = "full"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_a334e7a2b3aa68a503699048fe7cae03" {
  priority = 20
  status   = "active"
  target   = "*ratingsandreviewsadmin.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_58d251b40461edb2481993c6ab2ca52a" {
  priority = 19
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/adview*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://adserver.findlaw-cloud-dev.com/adview$1"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_6dfdef94fbfd5ef989575ecdb52ef72d" {
  priority = 18
  status   = "active"
  target   = "*adserver.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_6d063243290fe44c6d9c30c3b68c0cb2" {
  priority = 17
  status   = "active"
  target   = "commonlaw.findlaw-cloud-dev.com/*/*/*.html"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.findlaw-cloud-dev.com/legalblogs/consumer-protection/$3/"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_d77474293069e4f6ba9f2e8257154d07" {
  priority = 16
  status   = "active"
  target   = "https://www.findlaw-cloud-dev.com/bin/newsletters"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    host_header_override = "www.flportaldev.int.thomsonreuters.com"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_e437af74ebc29ab0830a63718144ec84" {
  priority = 15
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/wp-login.php*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_e99076957e89b6209fc76c630f19ea8e" {
  priority = 14
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/wp-admin/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_a0c7f5e248f51ade218394db2f11e9f9" {
  priority = 13
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/wp-json/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "aggressive"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_e75875fd4a30982e13491b8cb300c71d" {
  priority = 12
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/wp-includes/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "aggressive"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_47423152e0780e02b7e8e82dad3d2019" {
  priority = 11
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/wp-content/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "aggressive"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_206e553e5f577c4f692f156cb75744fa" {
  priority = 10
  status   = "active"
  target   = "blogs.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    forwarding_url {
      status_code = 301
      url         = "https://www.findlaw-cloud-dev.com/legalblogs/$1"
    }
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_644bbcbb01b5e045b132ed1526d48d16" {
  priority = 9
  status   = "active"
  target   = "www.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level    = "cache_everything"
    edge_cache_ttl = 86400
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_c6140db95a6ee072546b3397de50cb52" {
  priority = 8
  status   = "active"
  target   = "*adsmanagement.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_f56dffc420be58e42cd086f48b8710f2" {
  priority = 7
  status   = "active"
  target   = "*ratingsapi.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_75593caf40ebe42f6ec49f00fb62eda3" {
  priority = 6
  status   = "active"
  target   = "*reputationadmin.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_7763cadf0b363b41c7ed940921323b14" {
  priority = 5
  status   = "active"
  target   = "*pu-green.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_4862397763c2f0e419303803793d45d2" {
  priority = 4
  status   = "active"
  target   = "*pu.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_1de697cc6514b8f8d483d4bbe75edcb0" {
  priority = 3
  status   = "active"
  target   = "*stats2.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    cache_level = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_ed077c198229db4c1e5692813369d01c" {
  priority = 2
  status   = "active"
  target   = "*flcas.findlaw-cloud-dev.com/*"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    browser_check = "off"
    cache_level   = "bypass"
  }
}

resource "cloudflare_page_rule" "terraform_managed_resource_dbf8a7818a685560ac14e6495e9f2103" {
  priority = 1
  status   = "active"
  target   = "https://findlaw-cloud-dev.com/forms/andrew-test-rule-delete-me"
  zone_id  = "b8b8985303e1be08c2fa2c2c45e1ff17"
  actions {
    automatic_https_rewrites = "on"
    minify {
      css  = "on"
      html = "off"
      js   = "off"
    }
    security_level = "off"
  }
}
