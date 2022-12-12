library("shiny")
library("ggplot2")



library("shiny")
runApp("myApp")




shinyApp(
  messy_ui <- fluidPage(
    
    
    navbarPage(
      "Covid and CO2 emissions",
      page_one,
      navbarMenu(
        "Interactive Visualization",
        page_two
      ),
    ),
    
  ),
  
)






page_one <- tabPanel(
  "Introduction",
  
  headerPanel("Introduction"),
  
  mainPanel(
    
    p("CO2 emissions have been an increasingly important topic as leaders aroudn the globe have pledged their efforts in reducing climate change. Co2 emissions is a direcet link to climate change as the emissions warm the ozone layer. 
      With the warming of the ozone layer, harmful UV rays are let into the earth's atmosphere raising temperatures world wide. Glaciers that have been frozen for millions of years are defrosting contributing to rising sea levels. 
      Tropical islands in the pacific ocean are at risk of being submerged within the century, forcing entire people groups to eventually relocate. For this report I'll be using CO2 emissions report from Our World in Data. "),
    
    p("For this report, I'll be using emissions data from Our World in Data. Here are a few of the values I chose to look at:"),
    
    p("- Population: For each country I examined I wanted to get a sense of how many people occucpied each country. With differing popoulations levels it could impact the level of CO2 emissionsin that country"),
    p("-Consumption CO2 per capita: this variable explains the average amount of CO2 each person contributed in a country."),
    p("- Cumulative CO2: this variable sums up the total CO2 emissions that a country contributed in a certain year."),
    
    p(),
    
    p("Some questions that i'm interested in exploring are"),
    
    p("Does a country with a bigger population necessarily contribute to more CO2 emissions than a smaller country?"),
    p("How have cumulative CO2 levels varied through out the years?"),
    p("Does a person's region impact if they contribute more CO2 emissions?")
    
    
  )
  
)




  











