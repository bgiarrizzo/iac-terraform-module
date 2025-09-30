resource "prowlarr_download_client_transmission" "prowlarr_download_client_transmission" {
  enable   = true
  priority = 1
  name     = "Transmission"
  host     = var.transmission_url
  port     = var.transmission_port
  url_base = var.transmission_url_base
}

resource "radarr_download_client_transmission" "radarr_download_client_transmission" {
  enable   = true
  priority = 1
  name     = "Transmission"
  host     = var.transmission_url
  port     = var.transmission_port
  url_base = var.transmission_url_base
}

resource "sonarr_download_client_transmission" "sonarr_download_client_transmission" {
  enable   = true
  priority = 1
  name     = "Transmission"
  host     = var.transmission_url
  port     = var.transmission_port
  url_base = var.transmission_url_base
}

# resource "lidarr_download_client_transmission" "lidarr_download_client_transmission" {
#   enable   = true
#   priority = 1
#   name     = "Transmission"
#   host     = var.transmission_url
#   port     = var.transmission_port
#   url_base = var.transmission_url_base
# }

# resource "readarr_download_client_transmission" "readarr_download_client_transmission" {
#   enable   = true
#   priority = 1
#   name     = "Transmission"
#   host     = var.transmission_url
#   port     = var.transmission_port
#   url_base = var.transmission_url_base
# }
