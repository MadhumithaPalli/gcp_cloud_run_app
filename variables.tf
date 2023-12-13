variable "project_id" {
  description = "The GCP project ID"
}

variable "region" {
  description = "The region where Cloud Run service will be deployed"
  default     = "us-east1"
}

variable "image_name" {
  description = "The name of the Docker image in Google Container Registry"
  default     = "gcr.io/google-samples/hello-app:1.0"
}