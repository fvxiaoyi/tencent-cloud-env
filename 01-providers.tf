terraform {
  required_version = ">= 0.13"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.5.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.0.13"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = ">= 0.7.0"
    }
  }
}

provider "sops" {}

provider "flux" {}

provider "kubectl" {}

provider "kubernetes" {
  config_path = var.kubernetes_config_path
}

provider "github" {
  # Configuration options
  owner = var.github_owner
  token = data.sops_file.secrets.data["github_token"]
}