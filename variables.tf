variable "prowlarr_url" {
  description = "The URL of the Prowlarr instance"
  type        = string
  default     = "https://prowlarr.example.tv"
}

variable "prowlarr_api_key" {
  description = "The API key for the Prowlarr instance"
  type        = string
  default     = "mysupersecretapikey"
}

variable "radarr_url" {
  description = "The URL of the Radarr instance"
  type        = string
  default     = "https://radarr.example.tv"
}

variable "radarr_api_key" {
  description = "The API key for the Radarr instance"
  type        = string
  default     = "mysupersecretapikey"
}

variable "sonarr_url" {
  description = "The URL of the Sonarr instance"
  type        = string
  default     = "https://sonarr.example.tv"
}

variable "sonarr_api_key" {
  description = "The API key for the Sonarr instance"
  type        = string
  default     = "mysupersecretapikey"
}

variable "lidarr_url" {
  description = "The URL of the Lidarr instance"
  type        = string
  default     = "https://lidarr.example.tv"
}

variable "lidarr_api_key" {
  description = "The API key for the Lidarr instance"
  type        = string
  default     = "mysupersecretaipkey"
}

variable "readarr_url" {
  description = "The URL of the Readarr instance"
  type        = string
  default     = "https://readarr.example.tv"
}

variable "readarr_api_key" {
  description = "The API key for the Readarr instance"
  type        = string
  default     = "mysupersecretapikey"
}

variable "transmission_url" {
  description = "The URL of the Transmission instance"
  type        = string
  default     = "https://transmission.example.tv"
}

variable "transmission_port" {
  description = "The port of the Transmission instance"
  type        = number
  default     = 9091
}

variable "transmission_url_base" {
  description = "The base URL of the Transmission instance"
  type        = string
  default     = "/transmission/"
}

variable "notification_irc_webhook_url" {
  description = "The URL of the webhook to send notifications to"
  type        = string
  default     = "https://example.webhook.com"
}

variable "trakt_auth_user" {
  description = "The username for the Trakt API"
  type        = string
  default     = "User1"
}

variable "trakt_access_token" {
  description = "The access token for the Trakt API"
  type        = string
  default     = "mytraktaccesstoken"
}
