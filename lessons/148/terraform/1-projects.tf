resource "random_id" "lesson_id" {
  byte_length = 2
}

resource "google_project" "khulnasoft_host" {
  name                = "khulnasoft-host"
  project_id          = "khulnasoft-host-${random_id.lesson_id.dec}"
  billing_account     = "01FDA3-9697F3-6F05B8"
  org_id              = "206720471760"
  auto_create_network = false
}

resource "google_project" "khulnasoft_service" {
  name                = "khulnasoft-service"
  project_id          = "khulnasoft-service-${random_id.lesson_id.dec}"
  billing_account     = "01FDA3-9697F3-6F05B8"
  org_id              = "206720471760"
  auto_create_network = false
}
