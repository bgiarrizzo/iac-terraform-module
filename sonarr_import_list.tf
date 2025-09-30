resource "sonarr_import_list_trakt_list" "bruno_series_a_suivre_original" {
  name = "Bruno_SeriesASuivre_Original"

  enable_automatic_add = true
  should_monitor       = "all"

  root_folder_path = sonarr_root_folder.tv.path

  quality_profile_id = sonarr_quality_profile.any_original.id

  username = "bgiarrizzo"
  listname = "series-a-suivre-original"

  series_type   = "standard"
  season_folder = true

  auth_user    = var.trakt_auth_user
  access_token = var.trakt_access_token
}

resource "sonarr_import_list_trakt_list" "bruno_series_a_suivre_vf" {
  name = "Bruno_SeriesASuivre_VF"

  enable_automatic_add = true
  should_monitor       = "all"

  root_folder_path = sonarr_root_folder.tv.path

  quality_profile_id = sonarr_quality_profile.any_french.id

  username = "bgiarrizzo"
  listname = "series-a-suivre-vf"

  series_type   = "standard"
  season_folder = true

  auth_user    = var.trakt_auth_user
  access_token = var.trakt_access_token
}
