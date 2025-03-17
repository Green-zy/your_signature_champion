library(tidyverse)
library(plotly)

create_no_data_plot <- function(title) {
  plot_ly() |>
    add_annotations(
      text = "No data available",
      showarrow = FALSE,
      font = list(size = 16, color = "darkgray")
    ) |>
    layout(
      title = title,
      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE)
    )
}
