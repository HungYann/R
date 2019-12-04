library(shiny)

server<-function(input,output)
{
  output$result <-renderText(input$statement)
}