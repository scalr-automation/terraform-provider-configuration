provider "google" { }

resource "google_service_account" "myaccount" {
  account_id   = var.account_id
  display_name = "My Service Account"
}

variable "account_id" {
  type = string
  description = "The id of google service account"
}
