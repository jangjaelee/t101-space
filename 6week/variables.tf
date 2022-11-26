variable "vault_address" {
    description = "Vault URL"
    type        = string
    default     = "https://vault.awx.kr"
}

variable "vault_api_token" {
    description = "Vault API Token"
    type        = string
}