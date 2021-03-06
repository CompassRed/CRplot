#' Add CompassRed theme to ggplot chart
#'
#' This function allows you to add the CompassRed theme to your ggplot graphics.
#' @keywords theme_compassred
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' theme_compassred()

theme_compassred <- function() {

  font <- "Arial"

  ggplot2::theme_minimal(base_size = 8) %+replace%
    ggplot2::theme(
      # Text format:
      # This sets the font, size, type and colour of text for the chart's title
      plot.title = ggplot2::element_text(
        family = font,
        size  = 14,
        face  = "bold",
        color = dracula_orchid(),
        hjust = 0
      ),
      # This sets the font, size, type and colour of text for the chart's
      # subtitle, as well as setting a margin between the title and the subtitle
      plot.subtitle = ggplot2::element_text(
        family = font,
        size   = 12,
        margin = ggplot2::margin(0, 0, 18, 0),
        color = american_river(),
        hjust = 0
      ),
      # plot.caption = ggplot2::element_blank(),
      # This leaves the caption text element empty, because it is set elsewhere
      # in the finalise plot function
      ## NOTE: this is original for the bbplot package and was removed for the
      # CRplot package. Leaving it commented in case it becomes necessary later
      plot.title.position = "plot",

      ## Legend format
      # This sets the position and alignment of the legend, removes a title and
      # background for it and sets the requirements for any text within the
      # legend. The legend may often need some more manual tweaking when it
      # comes to its exact position based on the plot coordinates.
      legend.position   = "bottom",
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.text       = ggplot2::element_text(
        family = font,
        size   = 8,
        color  = american_river()
      ),

      ## Axis format
      # This sets the text font, size and colour for the axis test, as well as
      # setting the margins and removes lines and ticks. In some cases, axis
      # lines and axis ticks are things we would want to have in the chart - the
      # cookbook shows examples of how to do so.
      axis.title = ggplot2::element_text(
        face = "bold",
        size = 10,
        color = american_river()),
      axis.text  = ggplot2::element_text(
        family = font,
        size   = 9,
        color  = american_river()
      ),
      # axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5,
      #                                                              b = 10)),
      axis.ticks  = ggplot2::element_blank(),
      axis.line   = ggplot2::element_blank(),

      ## Grid lines
      # This removes all minor gridlines and adds major y gridlines. In many
      # cases you will want to change this to remove y gridlines and add x
      # gridlines. The cookbook shows you examples for doing so
      panel.grid = ggplot2::element_line(color = city_lights()),
      # panel.grid.minor   = ggplot2::element_blank(),
      # panel.grid.major.y = ggplot2::element_line(color = "#cbcbcb"),
      # panel.grid.major.x = ggplot2::element_line(color = "#cbcbcb"),

      ## Blank background
      # This sets the panel background as blank, removing the standard grey
      # ggplot background colour from the plot
      panel.background = ggplot2::element_blank(),

      ## Strip background
      # This sets the panel background for facet-wrapped plots to white,
      # removing the standard grey ggplot background colour and sets the title
      # size of the facet-wrap title to font size 22)
      strip.background = ggplot2::element_rect(fill  = city_lights(),
                                               color = city_lights()),
      strip.text       = ggplot2::element_text(size  = 10,
                                               face  = "bold",
                                               color = american_river()),

      plot.caption = element_text(
        size = 9,
        color = american_river(),
        hjust = 1
      )

    )
}
