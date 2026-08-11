variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "m7i-flex.large"
}

variable "key_name" {
  description = "EC2 Key Pair"
  type        = string
}

variable "volume_size" {
  description = "Root EBS Volume Size"
  type        = number
  default     = 30
}