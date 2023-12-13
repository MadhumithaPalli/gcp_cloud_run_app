provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_service" "default" {
  name     = "hello-world-service"
  location = var.region

  template {
    spec {
      containers {
        image = var.image_name
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = var.region
  project  = var.project_id
  service  = google_cloud_run_service.default.name

  policy_data = "{\"bindings\": [{\"role\": \"roles/run.invoker\", \"members\": [\"allUsers\"]}]}"
}