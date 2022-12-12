library("tidyverse")
library("shiny")
library("plotly")
library("leaflet")
library("hrbrthemes")


shinyserver <- function(input, output) {
  
  co2_data <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")
  View(co2_data)
  
  
  
  co2_chart <- co2_data %>% 
    filter(country == "New Zealand" | country == "United Kingdom" | country == "Kyrgyzstan") %>% 
    filter((year > 2007) & (year < 2019)) %>% 
    group_by(country, year) %>% 
    summarize(
      population,
      gdp,
      co2,
      co2_per_capita,
      consumption_co2_per_capita,
      cumulative_co2,
      share_global_co2
    )
  
  
  View(co2_chart)
  
  
  
  chart_vis <- co2_chart %>%
    group_by(country, year) %>% 
    summarize(consumption_co2_per_capita)
  
  plot_ly(chart_vis, x = chart_vis$country , y = chart_vis$consumption_co2_per_capita, type = "bar",
          name = "CO2 consumption per country") %>%
    layout(title = "CO2 consumption per capita per country")
  
  
 output$chart_vis <- renderLeaflet()

  
  
}





