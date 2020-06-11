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
