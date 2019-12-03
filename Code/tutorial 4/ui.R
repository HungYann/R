library(shiny)

ui<-fluidPage(
  headerPanel("Demostraion of shiny widget"),
  #1注意代码labels部分小心出错
  sidebarLayout(
    sidebarPanel(h2("Enter personal info"),
                 textInput(inputId="name","Enter your name",""),
                 textInput(inputId="age","Enter your age",""),
                 radioButtons(inputId="gender","Enter your gender",c("Male","Female"))
                
                 ),
    
   
    mainPanel(
      h3("Main panel informaiotn"),
      textOutput(outputId="myname"),
      textOutput(outputId="myage"),
      textOutput(outputId="mygender")
    )
    
  )
  
  
)
