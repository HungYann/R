library(shiny)

ui<-fluidPage(
  
  titlePanel("Demonstration of sliderInput widget in shiny"),
  
  sidebarLayout(
    
    sidebarPanel(h3("Slide"),
                 
      #sliderInput("slide","Select the range value from slider:",min = 0,max = 5,value=2)
      
      #sliderInput("slide","Select the value from slider:",min=0,max=5,value=c(2,3))
      #sliderInput("slide","select the value from slider:",min=0,max=5,value=2,animate = T)
      sliderInput("slide","select the value from slider:",min=0,max=5,value=2,step = 0.2)
      ),
    
    mainPanel(
      h3("Main panel informaiotn"),
      textOutput(outputId="slidename")
    )
    
  )
  
)