variable "github_owner" {
  type        = string
  description = "github owner"
  default     = "fvxiaoyi"
}

variable "repository_name" {
  type        = string
  default     = "tencent-cloud-flux-cd"
  description = "github repository name"
}

variable "repository_visibility" {
  type        = string
  default     = "public"
  description = "How visible is the github repo"
}

variable "branch" {
  type        = string
  default     = "main"
  description = "branch name"
}

variable "target_path" {
  type        = string
  default     = "cluster"
  description = "flux sync target path"
}

variable "kubernetes_config_path" {
  description = "kubernetes config path"
  type        = string
  default     = "./k3s.yaml"
}

data "sops_file" "secrets" {
  source_file = "./secrets/secrets.enc.json"
}