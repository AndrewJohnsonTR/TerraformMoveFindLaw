terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  api_key = "add_your_api_key_here"
  email = "add_your_email_here"
}

variable "account_id" {
  default = "f23257900cf3dc3626ff847184d08ff6"
}
