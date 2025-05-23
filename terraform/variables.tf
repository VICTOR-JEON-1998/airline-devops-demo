variable "aws_region" {
  description = "AWS region"
  default     = "ap-northeast-2"
}

variable "key_pair_name" {
  description = "The name of the EC2 Key Pair to allow SSH access"
  type        = string
}

