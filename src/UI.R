library(shiny)
library(bslib)
library(plotly)

ui <- page_fluid(
  theme = bs_theme(),
  
  tags$head(tags$title("Find Your Signature Champion!")),
  
  fluidRow(
    column(
      width = 3,
      wellPanel(
        h4("🎮 Select Your Preferences"),
        selectInput("tag", "Tag", choices = NULL),
        selectInput("role", "Role", choices = NULL),
        selectInput("range_type", "Range Type", choices = NULL),
        selectInput("champion", "Champion", choices = NULL),
        sliderInput("damage_weight", "Damage Weight", min = 0, max = 5, value = 2.5),
        sliderInput("defense_weight", "Defense Weight", min = 0, max = 5, value = 2.5)
      )
    ),
    
    column(
      width = 6,
      fluidRow(
        column(width = 12, plotlyOutput("radar_chart", height = "400px"))
      ),
      fluidRow(
        column(width = 6, plotlyOutput("attack_growth_chart", height = "200px")),
        column(width = 6, plotlyOutput("attack_speed_growth_chart", height = "200px"))
      )
    ),
    
    column(
      width = 3,
      plotlyOutput("hp_growth_chart", height = "150px"),
      plotlyOutput("armor_growth_chart", height = "150px"),
      plotlyOutput("resistance_growth_chart", height = "150px")
    )
  )
)
