terraform {
  backend "gcs" {
    bucket  = "koenighotze"
    prefix  = "terraform/bodleian/state"
  }
}
