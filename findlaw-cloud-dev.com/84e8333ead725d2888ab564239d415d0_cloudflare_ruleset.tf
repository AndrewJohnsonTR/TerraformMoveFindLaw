resource "cloudflare_ruleset" "terraform_managed_resource_7378e1e1a4ab4bdebb263de0e6528bbb" {
  kind    = "zone"
  name    = "default"
  phase   = "http_config_settings"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_ruleset" "terraform_managed_resource_32b71e5f103a4e9086c38153f4f9dabf" {
  kind    = "zone"
  name    = "default"
  phase   = "http_ratelimit"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  rules {
    action       = "managed_challenge"
    description  = "ChatbotService - Limit an IP to 50 calls/hour"
    enabled      = true
    expression   = "(http.request.uri.path wildcard \"/static/r/api/v1/chatbot/requestStream\" and ip.src ne 18.208.8.210 and ip.src ne 184.73.121.61)"
    last_updated = "2024-10-02T07:09:47.621933Z"
    ratelimit {
      characteristics     = ["ip.src", "cf.colo.id"]
      period              = 3600
      requests_per_period = 50
    }
  }
}

resource "cloudflare_ruleset" "terraform_managed_resource_a9812172d05348fa87463d8c7b022f21" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_cache_settings"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = false
    }
    description  = "Forms Bypass Caching"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/forms/account\")) or (starts_with(http.request.uri.path, \"/forms/contracts\")) or (http.request.uri.query matches \"code=.*\") or (http.request.uri.query contains \"option=oauthredirect\") or (starts_with(http.request.uri.path, \"/b/ss\")) or (http.cookie matches \"wp-.*|wordpress.*|mo_oauth.*|u_user_email=.*|u_ciam_id.*\") or (starts_with(http.request.uri.path, \"/forms/stripe\")) or (starts_with(http.request.uri.path, \"/forms/cart\"))"
    last_updated = "2023-04-13T17:34:59.022397Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        default = 30
        mode    = "override_origin"
      }
      cache = true
      edge_ttl {
        default = 2678400
        mode    = "override_origin"
      }
    }
    description  = "Forms Caching"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/forms\") and not starts_with(http.request.uri.path, \"/forms/account\") and not starts_with(http.request.uri.path, \"/forms/contracts\") and not http.cookie matches \"wp-.*|wordpress.*|mo_oauth.*|u_user_email=.*|u_ciam_id.*\" and not http.request.uri.query contains \"code=\" and not starts_with(http.request.uri.path, \"/forms/stripe\") and not starts_with(http.request.uri.path, \"/forms/cart\") and not http.request.uri.query contains \"option=oauthredirect\")"
    last_updated = "2023-05-04T19:38:51.172575Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = false
    }
    description  = "Bypass Cache on proxy"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/static/f/\")) or (starts_with(http.request.uri.path, \"/static/a/\"))"
    last_updated = "2023-08-16T14:51:07.214841Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = false
    }
    description  = "Files Bypass Cache"
    enabled      = true
    expression   = "(http.host eq \"files.findlaw-qa.com\") or (starts_with(http.request.uri.path, \"/lawyers/assets/\"))"
    last_updated = "2023-08-16T14:51:30.315675Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = false
    }
    description  = "Parameter bypass cache"
    enabled      = true
    expression   = "(http.request.uri.path contains \"flbypasscache=true\")"
    last_updated = "2023-08-18T20:05:16.29763Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = true
      edge_ttl {
        default = 2678400
        mode    = "override_origin"
      }
    }
    description  = "30 Day Blog Article Cache"
    enabled      = false
    expression   = "(http.request.uri.path matches \"^/legalblogs/*/*/\")"
    last_updated = "2023-11-09T15:24:14.933704Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        default = 86400
        mode    = "override_origin"
      }
      cache = true
      edge_ttl {
        default = 86400
        mode    = "override_origin"
      }
      serve_stale {
        disable_stale_while_updating = true
      }
    }
    description  = "PU Help"
    enabled      = true
    expression   = "(http.host eq \"profileupdate.findlaw-cloud-dev.com\" and not starts_with(http.request.uri.path, \"/help/search\"))"
    last_updated = "2024-01-22T19:24:25.646713Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        mode = "bypass"
      }
      cache = false
    }
    description  = "Lawyermarketing Bypass Arguments"
    enabled      = true
    expression   = "(http.request.uri.path eq \"/lawyer-marketing/lm-form\") or (starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.request.uri.query contains \"ct_primary_campaign_source\") or (starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.request.uri.query contains \"cid=\") or (starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.request.uri.query contains \"sfdccampaignid\") or (starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.request.uri.query contains \"ct_source\") or (starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.request.uri.query contains \"ct_source_type\")"
    last_updated = "2024-05-18T09:06:17.636469Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        mode = "bypass"
      }
      cache = false
    }
    description  = "Lawyermarketing Bypass Cookies"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.cookie matches \"wp-.*|wordpress.*|comment_.*\")"
    last_updated = "2024-05-18T09:07:06.007473Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        mode = "bypass"
      }
      cache = false
    }
    description  = "Lawyermarketing Bypass paths"
    enabled      = true
    expression   = "(http.request.uri.path matches \"^/lawyer-marketing/grow-with-findlaw/?$\") or (http.request.uri.path matches \"^/lawyer-marketing/grow-with-findlaw/.*\") or (starts_with(http.request.uri.path, \"/lawyer-marketing/schedule\")) or (http.request.uri.path matches \"^/lawyer-marketing/campaign/super-lawyers-nomination-2020/?\") or (http.request.uri.path matches \"^/lawyer-marketing/webcasts/.+\")"
    last_updated = "2024-05-18T09:07:38.783214Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        default = 14400
        mode    = "override_origin"
      }
      cache = true
      edge_ttl {
        default = 1209600
        mode    = "override_origin"
      }
    }
    description  = "Lawyermarketing Caching"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/lawyer-marketing\") and not http.cookie matches \"wp-.*|wordpress.*|comment_.*\" and not http.request.uri.path matches \"^/lawyer-marketing/grow-with-findlaw/?$\" and not http.request.uri.path matches \"^/lawyer-marketing/grow-with-findlaw/.*\" and not starts_with(http.request.uri.path, \"/lawyer-marketing/schedule\") and not http.request.uri.path matches \"^/lawyer-marketing/campaign/super-lawyers-nomination-2020/?\" and not http.request.uri.path matches \"^/lawyer-marketing/lm-form/?\" and not http.request.uri.query contains \"ct_primary_campaign_source\" and not http.request.uri.query contains \"cid=\" and not http.request.uri.query contains \"sfdccampaignid\" and not http.request.uri.query contains \"ct_source\" and not http.request.uri.query contains \"ct_source_type\" and not http.request.uri.path matches \"^/lawyer-marketing/webcasts/.+\")"
    last_updated = "2024-04-10T16:08:38.642062Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        mode = "bypass"
      }
      cache = true
    }
    description  = "LawyerMarketing Browser Cache"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/lawyer-marketing\"))"
    last_updated = "2024-05-18T09:52:29.742494Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = false
    }
    description  = "Temporary bypass Forms caching "
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/forms\"))"
    last_updated = "2024-07-05T10:26:09.931705Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        mode = "respect_origin"
      }
      cache = true
      edge_ttl {
        default = 10800
        mode    = "override_origin"
      }
    }
    description  = "Cache for New SERP URLs"
    enabled      = true
    expression   = "(http.request.uri.path matches \"^/*/(alabama|alaska|arizona|arkansas|california|colorado|connecticut|delaware|district-of-columbia|florida|georgia|hawaii|idaho|illinois|indiana|iowa|kansas|kentucky|louisiana|maine|maryland|massachusetts|michigan|minnesota|mississippi|missouri|montana|nebraska|nevada|new-hampshire|new-jersey|new-mexico|new-york|north-carolina|north-dakota|ohio|oklahoma|oregon|pennsylvania|puerto-rico|rhode-island|south-carolina|south-dakota|tennessee|texas|utah|vermont|virginia|washington|west-virginia|wisconsin|wyoming)/\")"
    last_updated = "2024-09-25T21:25:57.344492Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      cache = false
    }
    description  = "Ratings - Bypass All Cache"
    enabled      = true
    expression   = "(http.host eq \"ratingsapi.findlaw-cloud-dev.com\" and http.request.uri.path wildcard \"*\")"
    last_updated = "2024-10-15T13:52:18.557499Z"
  }
  rules {
    action = "set_cache_settings"
    action_parameters {
      browser_ttl {
        default = 16070400
        mode    = "override_origin"
      }
      cache = true
      edge_ttl {
        default = 16070400
        mode    = "override_origin"
      }
    }
    description  = "Ratings - cache Badges "
    enabled      = true
    expression   = "(http.request.uri.path wildcard \"/*/ratingsbadge/*/badge.script.js\" and http.host eq \"ratingsapi.findlaw-cloud-dev.com\")"
    last_updated = "2024-10-15T14:09:05.394248Z"
  }
}

resource "cloudflare_ruleset" "terraform_managed_resource_8caacb2cd1934cff8b70c23295aa187d" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_dynamic_redirect"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  rules {
    action = "redirect"
    action_parameters {
      from_value {
        preserve_query_string = true
        status_code           = 301
        target_url {
          value = "https://pu.findlaw-cloud-dev.com/welcome"
        }
      }
    }
    description  = "Redirect Non-PU Help Requests to PU"
    enabled      = true
    expression   = "(http.host eq \"profileupdate.findlaw-cloud-dev.com\" and not starts_with(http.request.uri.path, \"/help\") and not starts_with(http.request.uri.path, \"/wp-\"))"
    last_updated = "2024-06-24T07:39:16.541481Z"
  }
}

resource "cloudflare_ruleset" "terraform_managed_resource_c1ed43dc2b024c6e928d8b35893ab66e" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_firewall_custom"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  rules {
    action       = "block"
    description  = "Block wp subdomain non CF traffic"
    enabled      = true
    expression   = "(http.host eq \"wp.findlaw-cloud-dev.com\" and not ip.src in $cloudflare_ips)"
    last_updated = "2023-07-05T09:36:16.981597Z"
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Browser Stack"
    enabled      = true
    expression   = "(ip.src in $browser_stack) or (ip.src in $browserstack_ips)"
    last_updated = "2023-07-31T19:14:53.385647Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Cloudflare"
    enabled      = true
    expression   = "(ip.src in $cloudflare_ips) or (http.referer contains \"cloudflare\")"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow EPAM"
    enabled      = true
    expression   = "(ip.src in $epam_ips)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Observe Point"
    enabled      = true
    expression   = "(ip.src in $observe_point)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow TR Network"
    enabled      = true
    expression   = "(ip.src in $tr_internal_ips)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Zscaler Azure"
    enabled      = true
    expression   = "(ip.src in $zscaler_azure)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Speedcurve"
    enabled      = true
    expression   = "(http.user_agent contains \"PTST\")"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Zscaler Other until Azure Setup"
    enabled      = true
    expression   = "(ip.src in $zscaler_not_azure)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Bypass on param"
    enabled      = true
    expression   = "(http.request.uri.query eq \"bypass_firewall=true\")"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "DIY allow Cludo Crawlers"
    enabled      = true
    expression   = "(ip.src eq 52.6.240.133)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "DataDog"
    enabled      = true
    expression   = "(http.user_agent eq \"Datadog/Synthetics\")"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow AWS"
    enabled      = true
    expression   = "(ip.src in $aws_ips)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      phases  = ["http_request_sbfm"]
      ruleset = "current"
    }
    description  = "Allow Internal API Calls by User Agent"
    enabled      = true
    expression   = "(http.user_agent eq \"Mozilla/5.0 (compatible; R2D2-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; AdServer-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; Insight-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; PU-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; ReputationAPI-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; RatingsAPI-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; PPU-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; IPU-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; FLLD-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; SearchAPI-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; ProfileLambda-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; AudienceAds-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; SmokeTests-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; AdsMgmtProfileLambda-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; NuevoCerdo-FindLaw-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; FLFE-Testing-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\") or (http.user_agent eq \"Mozilla/5.0 (compatible; FLFE-Critical-Styles-Bot/1.0.0; +https://www.findlaw.com/findlawbot.html)\")"
    last_updated = "2024-01-09T17:12:53.595458Z"
    logging {
      enabled = true
    }
  }
  rules {
    action       = "block"
    description  = "Block Everything Else"
    enabled      = true
    expression   = "(ip.src in {0.0.0.0/0 ::/0})"
    last_updated = "2023-07-05T09:36:16.981597Z"
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow Stripe"
    enabled      = true
    expression   = "(ip.src in $stripe_ips)"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
  rules {
    action = "skip"
    action_parameters {
      ruleset = "current"
    }
    description  = "Allow AMS"
    enabled      = true
    expression   = "(ip.src in {34.196.205.3 52.73.128.139 3.210.227.115})"
    last_updated = "2023-07-05T09:36:16.981597Z"
    logging {
      enabled = true
    }
  }
}

resource "cloudflare_ruleset" "terraform_managed_resource_13e40756393348ec85449626ce8d4624" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_late_transform"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
}

resource "cloudflare_ruleset" "terraform_managed_resource_4588298ebcdc4f52aee97dea6365b8fa" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_origin"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  rules {
    action = "route"
    action_parameters {
      host_header = "wp.findlaw-cloud-dev.com"
      origin {
        host = "wp.findlaw-cloud-dev.com"
      }
    }
    description  = "Sitemap WP Host Overrides"
    enabled      = true
    expression   = "(http.request.uri.path eq \"/main-sitemap.xsl\") or (http.request.uri.path eq \"/author-sitemap.xml\") or (http.request.uri.path eq \"/post_tag-sitemap.xml\") or (http.request.uri.path eq \"/category_sitemap.xml\") or (http.request.uri.path eq \"/page_sitemap.xml\") or (starts_with(http.request.uri.path, \"/post-sitemap\")) or (http.request.uri.path eq \"/sitemap_index.xml\" and not http.host matches \"(archive|lawyers|caselaw|codes).findlaw-qa.com\") or (http.request.uri.path eq \"/findlaw-authors-sitemap.xml\")"
    last_updated = "2024-07-02T20:51:18.106784Z"
  }
  rules {
    action = "route"
    action_parameters {
      host_header = "forms.findlaw-cloud-dev.com"
      origin {
        host = "forms.findlaw-cloud-dev.com"
      }
      sni {
        value = "forms.findlaw-cloud-dev.com"
      }
    }
    description  = "Forms"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/forms\"))"
    last_updated = "2023-01-04T19:59:35.036773Z"
  }
  rules {
    action = "route"
    action_parameters {
      origin {
        host = "images.findlaw-cloud-dev.com"
      }
    }
    description  = "FWEB Redirect images"
    enabled      = true
    expression   = "(http.host eq \"images.findlaw.com\")"
    last_updated = "2023-07-05T19:41:22.827648Z"
  }
  rules {
    action = "route"
    action_parameters {
      host_header = "archivewww.findlaw-cloud-dev.com"
      origin {
        host = "archivewww.findlaw-cloud-dev.com"
      }
      sni {
        value = "archivewww.findlaw-cloud-dev.com"
      }
    }
    description  = "Archive serve from AEM"
    enabled      = false
    expression   = "(http.host eq \"archive.findlaw-cloud-dev.com\" and starts_with(http.request.uri.path, \"/lp\")) or (http.host eq \"archive.findlaw-cloud-dev.com\" and starts_with(http.request.uri.path, \"/law\"))"
    last_updated = "2023-09-07T16:53:24.651088Z"
  }
  rules {
    action = "route"
    action_parameters {
      host_header = "wp.findlaw-cloud-dev.com"
      origin {
        host = "wp.findlaw-cloud-dev.com"
      }
      sni {
        value = "wp.findlaw-cloud-dev.com"
      }
    }
    description  = "Our Team - AEM to WP"
    enabled      = false
    expression   = "(starts_with(http.request.uri.path, \"/company/our-team/\") and not http.request.uri.path in {\"/company/our-team/contributing-authors\" \"/company/our-team/contributing-authors.html\"}) or (starts_with(http.host, \"archive.findlaw\") and http.request.uri.path eq \"/blog\")"
    last_updated = "2023-09-07T16:58:25.130255Z"
  }
  rules {
    action = "route"
    action_parameters {
      host_header = "lawyermarketing.findlaw-cloud-dev.com"
      origin {
        host = "lawyermarketing.findlaw-cloud-dev.com"
      }
      sni {
        value = "lawyermarketing.findlaw-cloud-dev.com"
      }
    }
    description  = "FL Lawyermarketing"
    enabled      = true
    expression   = "(starts_with(http.request.uri.path, \"/lawyer-marketing\") and http.host eq \"www.findlaw-cloud-dev.com\")"
    last_updated = "2024-08-28T08:34:37.678773Z"
  }
}

resource "cloudflare_ruleset" "terraform_managed_resource_c13361faec1e46e7a277cd5ef9cbdf5f" {
  kind    = "zone"
  name    = "transfer ruleset"
  phase   = "http_request_transform"
  zone_id = "b8b8985303e1be08c2fa2c2c45e1ff17"
  rules {
    action = "rewrite"
    action_parameters {
      uri {
        path {
          expression = "regex_replace(http.request.uri.path,\"/findlaw\",\"\")"
        }
      }
    }
    description  = "findlaw_sitemap.xml -> findlaw.com/sitemap.xml"
    enabled      = false
    expression   = "(http.request.full_uri eq \"https://www.findlaw-cloud-dev.com/findlaw_sitemap.xml\")"
    last_updated = "2021-07-20T12:25:31.007817Z"
  }
  rules {
    action = "rewrite"
    action_parameters {
      uri {
        path {
          value = "/https://www.findlaw.com/sitemap.xml"
        }
      }
    }
    description  = "Test findlaw.com sitemap.xml"
    enabled      = false
    expression   = "(http.request.full_uri eq \"https://www.findlaw-cloud-dev.com/my_findlaw_sitemap_2.xml\")"
    last_updated = "2023-05-04T19:18:34.95731Z"
  }
  rules {
    action = "rewrite"
    action_parameters {
      uri {
        query {
          value = "robots=1"
        }
      }
    }
    description  = "LM Robots.txt"
    enabled      = true
    expression   = "(http.request.uri.path eq \"lawyer-marketing/robots.txt\")"
    last_updated = "2024-02-27T18:45:45.686447Z"
  }
}
