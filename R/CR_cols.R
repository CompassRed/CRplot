#' Add CompassRed palettes to ggplot charts
#'
#' This function allows you to add the CompassRed palette to your ggplot graphics.
#' @keywords CR_cols CR_palettes
#' @export


# CompassRed colors
compassred_colors <- c(
  CR_red         = "#E83536",
  CR_blue        = "#171B2C",
  CR_green       = "#00B050",
  cb_gray        = "#999999",
  cb_orange      = "#E69F00",
  cb_light_blue  = "#56B4E9",
  cb_green       = "#009E73",
  cb_yellow      = "#F0E442",
  cb_dark_blue   = "#0072B2",
  cb_dark_orange = "#D55E00",
  cb_pink        = "#CC79A7",
  light_gray     = "#CCCCCC",
  dark_gray      = "#8c8c8c"
)


#' Function to extract compassred_colors colors as hex codes
#'
#' @param ... Names of compassred_colors
#' @export
#'
CR_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (CR_colors)

  compassred_colors[cols]
}

CR_palettes <- list(
  main       = CR_cols("CR_red", "CR_blue", "CR_green"),

  colorblind = CR_cols("cb_gray", "cb_orange", "cb_light_blue", "cb_green",
                       "cb_yellow", "cb_dark_blue", "cb_dark_orange", "cb_pink"),

  gray       = CR_cols("light_gray", "dark_gray")
)


#' Return function to interpolate a drsimonj color palette
#'
#' @param palette Character name of palette in CR_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
#'
CR_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- CR_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}


#' Color scale constructor for CompassRed colors
#'
#' @param palette Character name of palette in CR_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
scale_color_CR <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- CR_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("CR_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for CompassRed colors
#'
#' @param palette Character name of palette in CR_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export
#'
scale_fill_CR <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- CR_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("CR_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
