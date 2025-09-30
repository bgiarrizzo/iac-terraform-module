data "radarr_quality" "remux_1080p" {
  name = "Remux-1080p"
}

data "radarr_quality" "bluray_1080p" {
  name = "Bluray-1080p"
}

data "radarr_quality" "webrip_1080p" {
  name = "WEBRip-1080p"
}

data "radarr_quality" "webdl_1080p" {
  name = "WEBDL-1080p"
}

data "radarr_quality" "hdtv_1080p" {
  name = "HDTV-1080p"
}

data "radarr_quality" "bluray_720p" {
  name = "Bluray-720p"
}

data "radarr_quality" "webrip_720p" {
  name = "WEBRip-720p"
}

data "radarr_quality" "webdl_720p" {
  name = "WEBDL-720p"
}

data "radarr_quality" "hdtv_720p" {
  name = "HDTV-720p"
}

locals {
  radarr_qualities = [
    data.radarr_quality.remux_1080p,
    data.radarr_quality.bluray_1080p,
    data.radarr_quality.webrip_1080p,
    data.radarr_quality.webdl_1080p,
    data.radarr_quality.hdtv_1080p,
    data.radarr_quality.bluray_720p,
    data.radarr_quality.webrip_720p,
    data.radarr_quality.webdl_720p,
    data.radarr_quality.hdtv_720p,
  ]
  radarr_quality_group_list = [
    {
      id        = 5000
      name      = "TopTo1080p"
      qualities = local.radarr_qualities
    }
  ]
}

resource "radarr_quality_profile" "any_original" {
  name            = "AnyOriginal"
  upgrade_allowed = false

  language = data.radarr_language.original

  quality_groups = local.radarr_quality_group_list

  cutoff = 5000
}

resource "radarr_quality_profile" "any_french" {
  name            = "AnyFrench"
  upgrade_allowed = false

  language = data.radarr_language.french

  quality_groups = local.radarr_quality_group_list

  cutoff = 5000
}


