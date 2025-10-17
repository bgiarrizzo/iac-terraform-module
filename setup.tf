terraform {
  required_providers {
    prowlarr = {
      # https://registry.terraform.io/providers/devopsarr/prowlarr/latest
      source  = "devopsarr/prowlarr"
      version = "3.0.2"
    }
    radarr = {
      # https://registry.terraform.io/providers/devopsarr/radarr/latest
      source  = "devopsarr/radarr"
      version = "2.3.3"
    }
    sonarr = {
      # https://registry.terraform.io/providers/devopsarr/sonarr/latest
      source  = "devopsarr/sonarr"
      version = "3.4.0"
    }
    lidarr = {
      # https://registry.terraform.io/providers/devopsarr/lidarr/latest
      source  = "devopsarr/lidarr"
      version = "1.13.0"
    }
  }
}

## ---------------------------------------------------------------
## ---------------------------------------------------------------

provider "prowlarr" {
  url     = var.prowlarr_url
  api_key = var.prowlarr_api_key
}

data "prowlarr_host" "prowlarr_host" {
  provider = prowlarr
}

## ---------------------------------------------------------------
## ---------------------------------------------------------------

provider "radarr" {
  url     = var.radarr_url
  api_key = var.radarr_api_key
}

data "radarr_host" "radarr_host" {
  provider = radarr
}

resource "radarr_naming" "naming" {
  rename_movies              = true
  replace_illegal_characters = true

  colon_replacement_format = "delete"

  standard_movie_format = "{Movie Title} ({Release Year}) {Quality Full}"
  movie_folder_format   = "{Movie Title} ({Release Year})"
}

resource "radarr_media_management" "media" {
  # Folders
  create_empty_movie_folders = true
  delete_empty_folders       = true

  # Importing
  skip_free_space_check_when_importing = false
  minimum_free_space_when_importing    = 20480
  copy_using_hardlinks                 = false
  import_extra_files                   = true
  extra_file_extensions                = "srt"

  # File Management
  download_propers_and_repacks                = "preferAndUpgrade"
  enable_media_info                           = true
  rescan_after_refresh                        = "always"
  file_date                                   = "release"
  auto_rename_folders                         = true
  auto_unmonitor_previously_downloaded_movies = true
  recycle_bin                                 = ""
  recycle_bin_cleanup_days                    = 7

  # Permissions
  set_permissions_linux = true
  chmod_folder          = 755
  chown_group           = ""

  paths_default_static = false
}

resource "radarr_root_folder" "movies" {
  path = "/movies"
}

## ---------------------------------------------------------------
## ---------------------------------------------------------------

provider "sonarr" {
  url     = var.sonarr_url
  api_key = var.sonarr_api_key
}

data "sonarr_host" "sonarr_host" {
  provider = sonarr
}

resource "sonarr_naming" "naming" {
  rename_episodes            = true
  replace_illegal_characters = false
  colon_replacement_format   = 0
  standard_episode_format    = "{Series Title} - S{season:00}E{episode:00} - {Episode Title} {Quality Full}"
  daily_episode_format       = "{Series Title} - {Air-Date} - {Episode Title} {Quality Full}"
  anime_episode_format       = "{Series Title} - S{season:00}E{episode:00} - {Episode Title} {Quality Full}"
  series_folder_format       = "{Series Title}"
  season_folder_format       = "Season {season}"
  specials_folder_format     = "Specials"
  multi_episode_style        = 0
}

resource "sonarr_media_management" "media" {
  # Folders
  create_empty_folders = true
  delete_empty_folders = true

  # Importing
  episode_title_required = "always"
  skip_free_space_check  = false
  minimum_free_space     = 20480
  hardlinks_copy         = true
  import_extra_files     = true
  extra_file_extensions  = "srt"

  # File Management
  unmonitor_previous_episodes = false
  download_propers_repacks    = "preferAndUpgrade"
  enable_media_info           = true

  rescan_after_refresh = "always"
  file_date            = "utcAirDate"
  recycle_bin_path     = ""
  recycle_bin_days     = 7

  # Permissions
  set_permissions = true
  chmod_folder    = "755"
  chown_group     = ""
}

resource "sonarr_root_folder" "tv" {
  path = "/tv"
}

## ---------------------------------------------------------------
## ---------------------------------------------------------------

provider "lidarr" {
  url     = var.lidarr_url
  api_key = var.lidarr_api_key
}

data "lidarr_host" "lidarr_host" {
  provider = lidarr
}

resource "lidarr_root_folder" "music" {
  path = "/music"
}

## ---------------------------------------------------------------
## ---------------------------------------------------------------