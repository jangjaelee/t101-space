variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "account_id" {
  description = "List of Allowed AWS account IDs"
  type        = list(string)
  default     = ["123456789012"]
}

variable "bastion-id" {
  description = "EC2 Bastion instance ID"
  type        = string
  default     = "awx-bastion"
}

variable "eip-id" {
  description = "Elastic IP(EIP) ID"
  type        = string
  default     = "EIP-awx-bastion"
}

