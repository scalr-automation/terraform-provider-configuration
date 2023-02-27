terraform {
  required_providers {
    grafanaauth = {
      source   = "orendain/grafanaauth"
//    source   = "github.com/orendain/grafanaauth" // for use during development
      #versions = "0.0.3"
    }
  }
}
  
provider "grafanaauth" {
  url = "https://scalrtest.grafana.net/"
#token = "eyJrIjoiNVZWVEdHdW9WY253Z2FwT1plcTI5N2lEajRFak1rSkciLCJuIjoiMjIyIiwiaWQiOjF9"
//  organization_id = 2
}

resource "grafanaauth_api_key" "foo" {
  name = "key_foo"
  role = "Viewer"
}


output "api_key_foo_key_only" {
  value = grafanaauth_api_key.foo.key
  sensitive = true
}

