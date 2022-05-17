provider "kubernetes" {
  config_path = "~/.kube/config"
  insecure    = true
  version     = "~> 1.13.0"
}

provider "helm" {
  alias = "stable"
  kubernetes {
    config_path =  "~/.kube/config"
  }

  version = "0.10.6" //lock the version
}


