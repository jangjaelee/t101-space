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

variable "sn-ec2-bastion" {
  description = "EC2 Bastion Subnet tag name"
  type        = string
  default     = "SN-public-2a-NATGW"
}

variable "sg-ec2-bastion" {
  description = "EC2 Bastion Security Group tag name"
  type        = string
  default     = "SG-awx-public-bastion"
}
