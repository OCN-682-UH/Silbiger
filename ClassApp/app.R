library(shiny)
library(tidyverse)


ui<-fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 25, min = 1, max = 100),
  textInput(inputId = "title",
            label = "Write a title",
            value = "Histogram of Random Normal Values"),
  plotOutput("hist"),
  verbatimTextOutput("stats")
  
)

server<- function(input,output){
  data<-reactive({
    tibble(x = rnorm(input$num))
    
  })
  
  output$hist <- renderPlot({
    
    ggplot(data(), aes(x=x))+
      geom_histogram()+
      labs(title = input$title)
    
  })
  output$stats<- renderPrint({
    summary(data())
  })
}

shinyApp(ui, server)