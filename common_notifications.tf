resource "prowlarr_notification_webhook" "irc" {
  name = "WebHook IRC"

  url = "${var.notification_irc_webhook_url}/"

  # Method
  # 1 = POST, 2 = PUT
  method = 1

  include_health_warnings = true
  include_manual_grabs    = true

  on_application_update = true
  on_grab               = true
  on_health_issue       = true
  on_health_restored    = true
}

resource "radarr_notification_webhook" "irc" {
  name = "WebHook IRC"

  url = "${var.notification_irc_webhook_url}/"

  # Method
  # 1 = POST, 2 = PUT
  method = 1

  on_application_update = true

  on_download = true
  on_grab     = true

  on_health_issue    = true
  on_health_restored = true

  on_manual_interaction_required = true

  on_movie_added                   = true
  on_movie_delete                  = true
  on_movie_file_delete             = true
  on_movie_file_delete_for_upgrade = true

  on_rename  = true
  on_upgrade = true
}

resource "sonarr_notification_webhook" "irc" {
  name = "WebHook IRC"

  url = "${var.notification_irc_webhook_url}/"

  # Method
  # 1 = POST, 2 = PUT
  method = 1

  include_health_warnings = true

  on_application_update = true
  on_download           = true

  on_episode_file_delete             = true
  on_episode_file_delete_for_upgrade = true

  on_grab = true

  on_health_issue    = true
  on_health_restored = true

  on_manual_interaction_required = true

  on_rename = true

  on_series_add    = true
  on_series_delete = true

  on_upgrade = true
}


# resource "lidarr_notification_webhook" "irc" {
#   name = "WebHook IRC"

#   url = "${var.notification_irc_webhook_url}/lidarr/"

#   # Method
#   # 1 = POST, 2 = PUT
#   method = 1
# }

# resource "readarr_notification_webhook" "irc" {
#   name = "WebHook IRC"

#   url = "${var.notification_irc_webhook_url}/readarr/"

#   # Method
#   # 1 = POST, 2 = PUT
#   method = 1
# }
