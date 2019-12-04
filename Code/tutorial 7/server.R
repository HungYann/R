library(shiny)

server<-function(input,output)
{
 
   output$main<-renderPlot({
     
     colm <- as.numeric(input$var)
     
     hist(iris[,colm],breaks = seq(0,max(iris[,colm]),l=input$bins+1),col=input$color,main="Hostogram of iris database",xlab=names(iris[colm]))
     
     
   })
}