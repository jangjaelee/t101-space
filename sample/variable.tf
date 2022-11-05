variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "account_id" {
  description = "List of Allowed AWS account IDs"
  type        = list(string)
  default     = ["587337045354"]
}

variable "<name>" {
  description = "<description>"
  type        = string  # variable type
  default     = "<variable value>"
}
