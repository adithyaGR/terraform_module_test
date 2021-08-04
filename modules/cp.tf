resource "google_storage_bucket_iam_binding" "gcr_bucket_pull_service_account_members" {
  
  bucket = google_container_registry.registry.id
  role   = "roles/storage.objectViewer"
  members = ["serviceAccount:${var.service_account_email}"]
}
