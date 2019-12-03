library(shiny)

ui<-fluidPage(
  titlePanel("Demostration of textInput widge in shiny"),
  
  sidebarLayout(
  
    sidebarPanel(h5("Enter the personal information"),
                 textInput(inputId="name",label = "Enter your name",""),
                 textInput(inputId="age",label="Enter your age","")
                 ),
    
    
    mainPanel(h2("personal Information"),
              textOutput("myname"),
              textOutput("myage")
              )
  )
  
  
)