#' Return function to interpolate a drsimonj color palette
#'
#' @param palette Character name of palette in CR_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
#'
CR_pal <- function(palette = "main", reverse = FALSE, ...) {

  CR_palettes <- list(
    main       = CR_cols("CR_red", "CR_blue", "CR_green"),

    colorblind = CR_cols("cb_gray", "cb_orange", "cb_light_blue", "cb_green",
                         "cb_yellow", "cb_dark_blue", "cb_dark_orange", "cb_pink"),

    gray       = CR_cols("light_gray", "dark_gray")
  )

  pal <- CR_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}
