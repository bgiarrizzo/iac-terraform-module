resource "sonarr_custom_format" "original" {
  name = "Original"

  include_custom_format_when_renaming = false

  specifications = [
    {
      name           = "Original"
      implementation = "LanguageSpecification"
      negate         = false
      required       = true
      value          = "Original"
    },
  ]
}

resource "sonarr_custom_format" "french" {
  name = "French"

  include_custom_format_when_renaming = false

  specifications = [
    {
      name           = "French"
      implementation = "LanguageSpecification"
      negate         = false
      required       = true
      value          = "French"
    },
  ]
}
