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
#' * "forest_blues" - #0A3D62
#' * "reef_encounter" - #079992
#' * "aurora_green" - #78E08F
#' * "dupain" - #60A3BC
#' * "squash_blossom" - #F6B93B
#' * "carrot_orange" - #E58E26
#' * "mandarin_red" - #E55039
#' * "american_river" - #636E72
#' * "dracula_orchid" - #2D3436
#' * "city_lights" - #DFE6E9
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
    CR_red         = CR_red(),
    CR_blue        = CR_blue(),
    CR_green       = CR_green(),
    cb_gray        = cb_gray(),
    cb_orange      = cb_orange(),
    cb_light_blue  = cb_light_blue(),
    cb_green       = cb_green(),
    cb_yellow      = cb_yellow(),
    cb_dark_blue   = cb_dark_blue(),
    cb_dark_orange = cb_dark_orange(),
    cb_pink        = cb_pink(),
    light_gray     = light_gray(),
    dark_gray      = dark_gray(),
    forest_blues   = forest_blues(),
    reef_encounter = reef_encounter(),
    aurora_green   = aurora_green(),
    dupain         = dupain(),
    squash_blossom = squash_blossom(),
    carrot_orange  = carrot_orange(),
    mandarin_red   = mandarin_red(),
    american_river = american_river(),
    dracula_orchid = dracula_orchid(),
    city_lights    = city_lights()
  )

  if (is.null(cols))
    return (CR_colors)

  CR_colors[cols]
}
