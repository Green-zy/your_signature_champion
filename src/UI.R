library(shiny)
library(bslib)
library(plotly)

# UI definition
ui <- page_fluid(
  theme = bs_theme(),
  
  # Page title
  tags$head(tags$title("Find Your Signature Champion!")),
  
  fluidRow(
    # First column: User input section
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
    
    # Second column: Main output section
    column(
      width = 6,
      fluidRow(
        column(
          width = 12,
          plotlyOutput("radar_chart", height = "400px")  # Radar Chart
        )
      ),
      fluidRow(
        column(
          width = 6,
          plotlyOutput("attack_growth_chart", height = "200px")  # Attack Growth Chart
        ),
        column(
          width = 6,
          plotlyOutput("attack_speed_growth_chart", height = "200px")  # Attack Speed Growth Chart
        )
      )
    ),
    
    # Third column: Additional growth stats
    column(
      width = 3,
      plotlyOutput("hp_growth_chart", height = "150px"),        # HP Growth Chart
      plotlyOutput("armor_growth_chart", height = "150px"),     # Armor Growth Chart
      plotlyOutput("resistance_growth_chart", height = "150px") # Resistance Growth Chart
    )
  )
)

# Server logic
server <- function(input, output, session) {
  
  output$radar_chart <- renderPlotly({
    # TODO: Compute and generate Radar Chart
    plot_ly()
  })
  
  output$attack_growth_chart <- renderPlotly({
    # TODO: Compute and generate Attack Growth Chart
    plot_ly()
  })
  
  output$attack_speed_growth_chart <- renderPlotly({
    # TODO: Compute and generate Attack Speed Growth Chart
    plot_ly()
  })
  
  output$hp_growth_chart <- renderPlotly({
    # TODO: Compute and generate HP Growth Chart
    plot_ly()
  })
  
  output$armor_growth_chart <- renderPlotly({
    # TODO: Compute and generate Armor Growth Chart
    plot_ly()
  })
  
  output$resistance_growth_chart <- renderPlotly({
    # TODO: Compute and generate Resistance Growth Chart
    plot_ly()
  })
}

# Run the application
shinyApp(ui = ui, server = server)
