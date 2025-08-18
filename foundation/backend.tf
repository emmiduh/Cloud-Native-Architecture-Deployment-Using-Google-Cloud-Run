terraform {
  backend "gcs" {
    bucket = var.bucket_id
    prefix = "cnad/foundation"
  }
}
