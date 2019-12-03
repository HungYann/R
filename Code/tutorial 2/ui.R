library(shiny)


ui<-fluidPage(
  
  titlePanel(title = "This is my first shiny app, hello shiny"),
  
  sidebarLayout(
    position="right",
    
    sidebarPanel(h3("this is side bar panel"),h4("widge4"),h5("widget5")),
    
    mainPanel("this is the main panel text, output is displayed here")
    
    
  )
  
  
)

