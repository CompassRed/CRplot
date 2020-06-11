#' Function to extract CompassRed colors as hex codes
#'
#' @param ... Names of CompassRed colors as strings. Color options include:
#' * "CR_red" - #E83536
#' * "CR_blue" - #171B2C
#' * "CR_green" - #00B050
#' * "cb_gray" - #999999
#' * "cb_orange" - #E69F00
#' * "cb_light_blue" - #56B4E9
#' * "cb_green" - #009E73
#' * "cb_yellow" - #F0E442
#' * "cb_dark_blue" - #0072B2
#' * "cb_dark_orange" - #D55E00
#' * "cb_pink" - #CC79A7
#' * "light_gray" - #CCCCCC
#' * "dark_gray" - #8c8c8c
#' @md
#'
#' @return Either one or many hex codes as strings.
#'
#' @examples
#'
#' # Returns a single hex code
#' CR_cols("CR_green")
#'
#' # Returns multiple hex codes
#' CR_cols("CR_green", "CR_red")
#'
#' # Returns all hex codes
#' CR_cols()
#'
#' # Usage within ggplot2
#' data(iris)
#' iris %>%
#'   ggplot(aes(x = Sepal.Length,
#'              y = Sepal.Width)) +
#'   geom_point(color = CR_cols("CR_green"))
#'
#' @export
#'
CR_cols <- function(...) {
  cols <- c(...)

  # CompassRed colors
  CR_colors <- c(
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

  if (is.null(cols))
    return (CR_colors)

  CR_colors[cols]
}
