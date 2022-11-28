terraform {
  required_version = ">= 0.13"

  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = ">= 0.7.0"
    }
  }
}

provider "sops" {}

data "sops_file" "secrets" {
  source_file = "../secrets/secrets.enc.json"
}
