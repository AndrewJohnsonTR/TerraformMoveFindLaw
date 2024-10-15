terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  api_key = "86ce36e380b4e10622314744086069c1cc0f4"
  email = "andrew.m.johnson@thomsonreuters.com"
}

variable "account_id" {
  default = "f23257900cf3dc3626ff847184d08ff6"
}
