data "sonarr_quality" "bluray_1080p" {
  name = "Bluray-1080p"
}

data "sonarr_quality" "bluray_720p" {
  name = "Bluray-720p"
}

data "sonarr_quality" "webrip_1080p" {
  name = "WEBRip-1080p"
}

data "sonarr_quality" "webrip_720p" {
  name = "WEBRip-720p"
}

data "sonarr_quality" "webrip_480p" {
  name = "WEBRip-480p"
}

data "sonarr_quality" "webdl_1080p" {
  name = "WEBDL-1080p"
}

data "sonarr_quality" "webdl_720p" {
  name = "WEBDL-720p"
}

data "sonarr_quality" "webdl_480p" {
  name = "WEBDL-480p"
}

data "sonarr_quality" "hdtv_1080p" {
  name = "HDTV-1080p"
}

data "sonarr_quality" "hdtv_720p" {
  name = "HDTV-720p"
}

data "sonarr_quality" "dvd" {
  name = "DVD"
}

data "sonarr_quality" "sdtv" {
  name = "SDTV"
}

locals {
  sonarr_qualities = [
    data.sonarr_quality.bluray_1080p,
    data.sonarr_quality.bluray_720p,
    data.sonarr_quality.webrip_1080p,
    data.sonarr_quality.webrip_720p,
    data.sonarr_quality.webrip_480p,
    data.sonarr_quality.webdl_1080p,
    data.sonarr_quality.webdl_720p,
    data.sonarr_quality.webdl_480p,
    data.sonarr_quality.hdtv_1080p,
    data.sonarr_quality.hdtv_720p,
    data.sonarr_quality.dvd,
    data.sonarr_quality.sdtv,
  ]
  sonarr_quality_group_list = [
    {
      id        = 5000
      name      = "TopTo1080p"
      qualities = local.sonarr_qualities
    }
  ]
}

resource "sonarr_quality_profile" "any_original" {
  name            = "AnyOriginal"
  upgrade_allowed = false

  quality_groups = local.sonarr_quality_group_list

  cutoff = 5000
}

resource "sonarr_quality_profile" "any_french" {
  name            = "AnyFrench"
  upgrade_allowed = false

  quality_groups = local.sonarr_quality_group_list

  cutoff = 5000
}


