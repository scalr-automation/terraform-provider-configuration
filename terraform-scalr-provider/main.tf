provider "scalr" {}

terraform {
   required_providers {
     scalr = {
       source  = "registry.scalr.io/scalr/scalr"
       version = "1.0.0-rc38"
     }
   }
 }

resource "scalr_environment" "test" {
  name       = "test-env"
  account_id = var.account_id
  cost_estimation_enabled = true
}

variable "account_id" {
  type = string
  }
