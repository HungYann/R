library(shiny)

server<-function(input,output)
{
  #server部分，每行分割不需要 comma
  output$myname<-renderText(input$name)
  output$myage<-renderText(input$age)
  output$mygender<-renderText(input$gender)
  
  
}