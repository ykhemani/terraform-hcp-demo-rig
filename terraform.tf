terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.54.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "hcp" {
  # Configuration options
}
