resource "google_project_service" "this" {
  for_each           = toset(var.services)
  service            = "${each.key}.gooogleapis.com"
  disable_on-destroy = false
}
