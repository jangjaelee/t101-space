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

variable "s3-bucket" {
  description = "AWS S3 Bucket"
  type        = string
  default     = "s3-bucket-awx"
}
