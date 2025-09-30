resource "prowlarr_application_radarr" "prowlarr_app_radarr" {
  name = "Radarr"

  base_url = var.radarr_url
  api_key  = var.radarr_api_key

  prowlarr_url = var.prowlarr_url
  sync_level   = "fullSync"
}

resource "prowlarr_application_sonarr" "prowlarr_app_sonarr" {
  name = "Sonarr"

  base_url = var.sonarr_url
  api_key  = var.sonarr_api_key

  prowlarr_url = var.prowlarr_url
  sync_level   = "fullSync"
}

resource "prowlarr_application_lidarr" "prowlarr_app_lidarr" {
  name = "Lidarr"

  base_url = var.lidarr_url
  api_key  = var.lidarr_api_key

  prowlarr_url = var.prowlarr_url
  sync_level   = "fullSync"
}

resource "prowlarr_application_readarr" "prowlarr_app_readarr" {
  name = "Readarr"

  base_url = var.readarr_url
  api_key  = var.readarr_api_key

  prowlarr_url = var.prowlarr_url
  sync_level   = "fullSync"
}
