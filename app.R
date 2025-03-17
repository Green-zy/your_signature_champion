library(shiny)
library(bslib)
library(plotly)
library(tidyverse)

source("src/data.R", local = TRUE)
source("src/ui.R", local = TRUE)
source("src/server.R", local = TRUE)

shinyApp(ui, server)
