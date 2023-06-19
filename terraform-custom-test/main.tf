
terraform {
   required_providers {
     scalr = {
       source  = "registry.scalr.io/scalr/scalr"
       version = "1.0.0-rc38"
     }
   }
 }

resource "scalr_environment" "test" {
  name       = "test-env4352345"
  account_id = <acc-ID>
  cost_estimation_enabled = true
  
}


