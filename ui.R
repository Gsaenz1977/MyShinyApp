#UI.R
library(shiny)
shinyUI(fluidPage(
  titlePanel("Iris Dataset"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("p", "Select column of iris dataset:",
                   list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
      # radioButtons("color", "Select Coloer to Display:",
      #             list("Red", "Green", "Blue", "Yellow")),
      
      selectInput("color", label = h3("Select box"), 
                  choices = list("Red" = "Red", "Green" = "Green", "Blue" = "Blue", "Yellow"="Yellow","Brown"="Brown"), 
                  selected = "Red"), 
      
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("BoxPlot")
      
    )
  )
))
