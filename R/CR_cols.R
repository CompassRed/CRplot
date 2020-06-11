#' Function to extract CompassRed colors as hex codes
#'
#' @param ... Names of CompassRed colors as strings. Color options include:
#' \itemize{
#'  \item{"CR_red"}{#E83536}}
#'  \item{"CR_blue"}{#171B2C}
#'  \item{"CR_green"}{#00B050}
#'  \item{"cb_gray"}{#999999}
#'  \item{"cb_orange"}{#E69F00}
#'  \item{"cb_light_blue"}{#56B4E9}
#'  \item{"cb_green"}{#009E73}
#'  \item{"cb_yellow"}{#F0E442}
#'  \item{"cb_dark_blue"}{#0072B2}
#'  \item{"cb_dark_orange"}{#D55E00}
#'  \item{"cb_pink"}{#CC79A7}
#'  \item{"light_gray"}{#CCCCCC}
#'  \item{"dark_gray"}{#8c8c8c}
#'  }
#'
#' @return Either one or many hex codes as strings
#'
#' @export
#'
CR_cols <- function(...) {
  cols <- c(...)

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

  if (is.null(cols))
    return (CR_colors)

  compassred_colors[cols]
}
