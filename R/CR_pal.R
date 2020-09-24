#' Return function to interpolate a CompassRed color palette
#'
#' This function gets a pallete by name from the list ("main" by default),
#' has a boolean condition determining whether to reverse the order or not,
#' and additional arguments to pass on to colorRampPallete() (such as an alpha value).
#'
#' @references \href{https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2}{Adapted from here}
#'
#' @param palette Character name of palette. Colors used in palettes are sourced from [CR_cols()] Options include:
#' * "main" - CR_red, CR_blue, CR_green
#' * "colorblind" - cb_gray, cb_orange, cb_light_blue, cb_green, cb_yellow, cb_dark_blue, cb_orange, cb_pink
#' * "gray" = light_gray, dark_gray
#' @md
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to [colorRampPalette()]
#'
#' @return Returns a function to create a color palette
#'
#'
#'
#' @export
#'
CR_pal <- function(palette = "main", reverse = FALSE, ...) {

  CR_palettes <- list(
    main       = CR_cols("CR_red", "CR_blue", "CR_green"),

    full       = CR_cols("forest_blues", "CR_green", "aurora_green", "dupain",
                         "squash_blossom", "carrot_orange", "CR_red", "american_river"),

    colorblind = CR_cols("cb_gray", "cb_orange", "cb_light_blue", "cb_green",
                         "cb_yellow", "cb_dark_blue", "cb_dark_orange", "cb_pink"),

    gray       = CR_cols("light_gray", "dark_gray"),

    sequential = CR_cols("city_lights", "forest_blues"),

    diverging  = CR_cols("carrot_orange", "city_lights", "forest_blues"),

    pos_neg    = CR_cols("CR_red", "city_lights", "forest_blues")

  )

  pal <- CR_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}
