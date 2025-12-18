resource "google_api_gateway_api" "api" {
  api_id = var.api_gateway_name
}

resource "google_api_gateway_api_config" "config" {
  api      = google_api_gateway_api.api.name
  api_config_id = var.api_config_name

  openapi_documents {
    document {
      path = var.openapi_spec_path
    }
  }
}

resource "google_api_gateway_gateway" "gateway" {
  gateway_id = var.api_gateway_name
  api_config = google_api_gateway_api_config.config.id
  location   = var.region
}

