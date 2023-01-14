terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.test_variable
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

output "test_output" {
  value = aws_s3_bucket.bucket
}

variable "test_variable" {
  type = string
}
