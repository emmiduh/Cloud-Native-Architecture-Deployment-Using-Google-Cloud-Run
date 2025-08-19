data "terraform_remote_state" "foundation" {
  backend = "gcs"
  config = {
    bucket = var.bucket_id
    prefix = "cnad/foundation"
  }
}
