
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

   
resource "scalr_variable" "example" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "shell"
  description  = "variable description"
  workspace_id = <WS-ID>
}
resource "null_resource" "env_varstimeout0123456789timeout0123456789timeot0123456789timeout01234567" {
  count = 1
  triggers = {
    run_id = "12"
  }
  provisioner "local-exec" {
    command = "env"
  }
}
