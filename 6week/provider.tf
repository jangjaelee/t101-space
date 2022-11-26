provider "vault" {
    address         = var.vault_address
    skip_tls_verify = false
    token           = var.vault_api_token
}

provider "kubernetes" {
    config_context = "rancher-desktop"
    load_config_file = "true"
    host = "http://172.29.164.72"
}