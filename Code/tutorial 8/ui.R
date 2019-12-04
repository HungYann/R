library(shiny)

ui<-fluidPage(
  
  titlePanel(title=h3("Iris Dataset",align="center")),
  
  sidebarLayout(
    sidebarPanel(
        selectInput("var","Select the variable from the iris dataset",c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.Length"=3,"Petal.Width"=4)),
        br(),
        sliderInput("bins","Select the number of BINs for histogram",min=5,max=25,value=15),
        br(),
        radioButtons("color","Select the colour of histogram",c("Green","Red","Yellow"),selected = "Green")
      
    ),
    
    mainPanel(
      tabsetPanel(
        type="tab",
        tabPanel("Summary",verbatimTextOutput("sum")),
        tabPanel("Structure",verbatimTextOutput("str")),
        tabPanel("Data",tableOutput("data")),
        tabPanel("Plot",plotOutput("plot"))
      )
      
    )
    
    
  )
  
  
  
)