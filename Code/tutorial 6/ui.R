library(shiny)

ui<-fluidPage(
  titlePanel("demonstration of the selectInput UI widget in shiny"),
  
  sidebarLayout(
    sidebarPanel(h3("Select cities"),
                 
                #selectInput(inputId="statement","Select the state",c("California","Floriada","Texas","New York","Airzona"),selected="California"),selected=TRUE,multiple=TRUE)
                selectInput(inputId="statement","Select the state",c("California","Floriada","Texas","New York","Airzona"),selected="California")
                ),
    
    mainPanel(
      h2("output"),
      textOutput("result")
      
    )
  )
)