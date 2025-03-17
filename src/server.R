library(shiny)
library(plotly)
library(tidyverse)

source("src/utils.R", local = TRUE)

server <- function(input, output, session) {
  
  output$radar_chart <- renderPlotly({
    plot_ly()
  })
  
  output$attack_growth_chart <- renderPlotly({
    plot_ly()
  })
  
  output$attack_speed_growth_chart <- renderPlotly({
    plot_ly()
  })
  
  output$hp_growth_chart <- renderPlotly({
    plot_ly()
  })
  
  output$armor_growth_chart <- renderPlotly({
    plot_ly()
  })
  
  output$resistance_growth_chart <- renderPlotly({
    plot_ly()
  })
}
