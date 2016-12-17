#SERVER.R
library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    if(input$p=='a'){
      i<-1
    }
    
    if(input$p=='b'){
      i<-2
    }
    
    if(input$p=='c'){
      i<-3
    }
    
    if(input$p=='d'){
      i<-4
    }
    
    x    <- iris[, i]
    
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    h<-hist(x, breaks = bins, col = input$color, border = 'white')
    yfit<-dnorm(bins,mean=mean(x),sd=sd(x)) 
    yfit <- yfit*diff(h$mids[1:2])*length(x) 
    lines(bins, yfit, col="blue", lwd=2)
  })
  output$BoxPlot <- renderPlot({
    if(input$p=='a'){
      i<-1
    }
    
    if(input$p=='b'){
      i<-2
    }
    
    if(input$p=='c'){
      i<-3
    }
    
    if(input$p=='d'){
      i<-4
    }
    
    x    <- iris[, i]
    boxplot(x,col="magenta")
  })
})
