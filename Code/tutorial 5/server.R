library(shiny)

server <- function(input, output) {
    #使用paste添加文字
    output$slidename<-renderText(paste("You selected the value",input$slide))
    
}

