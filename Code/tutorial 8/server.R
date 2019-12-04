library(shiny)

server<-function(input,output)
{
    output$sum<-renderPrint({
      summary(iris)  
    })
    
    output$str<-renderPrint({
      str(iris)
    }
    )
    output$data<-renderTable({
      colm<-as.numeric(input$var)
      
      head(iris[colm])
    })
    
    output$plot<-renderPlot({
      colm<-as.numeric(input$var)
      hist(iris[,colm],breaks = seq(0,max(iris[,colm]),l=input$bins+1),col=input$color)
    })
  
}