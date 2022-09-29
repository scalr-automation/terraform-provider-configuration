provider "google" { 
}
resource "google_service_account" "myaccount" {
  account_id   = "myacco"
  display_name = "My Service Account"
}
