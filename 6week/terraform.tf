terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = ">= 3.0.0"
    }    
  }
}