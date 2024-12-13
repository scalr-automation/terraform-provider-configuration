terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_ecr_repository" "foo" {
  name = var.account_id
  tags = {
    owner = "scalr"
  }
}

variable "account_id" {
  type = string
  default = "hoo_user"
}

output "ecr_arn" {
  description = "aws ecr arn"
  value = aws_ecr_repository.foo.arn
}
