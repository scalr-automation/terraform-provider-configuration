provider "aws" {
region = var.region
}
resource "aws_ecr_repository" "foo" {
name = "bar"
}
variable "region" {
type = string
default = "us-east-1"
}
