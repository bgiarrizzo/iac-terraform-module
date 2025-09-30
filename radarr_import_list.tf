resource "radarr_import_list_trakt_user" "bruno_watchlist" {
  name                 = "Bruno_WatchList"
  enabled              = true
  enable_auto          = true
  monitor              = "movieOnly"
  search_on_add        = true
  minimum_availability = "announced"

  root_folder_path = radarr_root_folder.movies.path

  quality_profile_id = radarr_quality_profile.any_french.id

  username = "bgiarrizzo"

  trakt_list_type = 0

  limit = 10000

  auth_user    = var.trakt_auth_user
  access_token = var.trakt_access_token
}


resource "radarr_import_list_trakt_list" "bruno_must_have_original" {
  name                 = "Bruno_MustHave_Original"
  enabled              = true
  enable_auto          = true
  monitor              = "movieOnly"
  search_on_add        = true
  minimum_availability = "announced"

  root_folder_path = radarr_root_folder.movies.path

  quality_profile_id = radarr_quality_profile.any_original.id

  username = "bgiarrizzo"
  listname = "films-must-have-original"

  limit = 10000

  auth_user    = var.trakt_auth_user
  access_token = var.trakt_access_token
}

resource "radarr_import_list_trakt_list" "bruno_must_have_french" {
  name                 = "Bruno_MustHave_French"
  enabled              = true
  enable_auto          = true
  monitor              = "movieOnly"
  search_on_add        = true
  minimum_availability = "announced"

  root_folder_path = radarr_root_folder.movies.path

  quality_profile_id = radarr_quality_profile.any_french.id

  username = "bgiarrizzo"
  listname = "films-must-have-fr"

  limit = 10000

  auth_user    = var.trakt_auth_user
  access_token = var.trakt_access_token
}

resource "radarr_import_list_trakt_list" "lyanna_movies" {
  name                 = "List_LyannaMovies"
  enabled              = true
  enable_auto          = true
  monitor              = "movieOnly"
  search_on_add        = true
  minimum_availability = "announced"

  root_folder_path = radarr_root_folder.movies.path

  quality_profile_id = radarr_quality_profile.any_french.id

  username = "bgiarrizzo"
  listname = "lyanna"

  limit = 10000

  auth_user    = var.trakt_auth_user
  access_token = var.trakt_access_token
}
