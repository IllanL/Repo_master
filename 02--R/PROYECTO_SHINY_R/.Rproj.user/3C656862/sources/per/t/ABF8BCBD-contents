library(shiny)

shinyServer(function(input,output){
  
  # MI SERVIDOR:
  
  output$grafica <- renderPlot({
    
    # Hacer gráfica
    
    hist(faithful$waiting, breaks=input$nbins)
    
  })
  
  
  
})