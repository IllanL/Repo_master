library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel("Visualización con ggplot y plotly"),
  sidebarLayout(
    sidebarPanel(
      # id: varx, vary
      # 3 opciones: cyl, cty, displ
      
      selectInput("varx", label = h3("Elige  bien"), 
                          choices = list("cyl" = "cyl", "cty" = "cty", "displ" = "displ"), 
                          selected = 1),

      
      selectInput("vary", label = h3("Elige  bien"), 
                          choices = list("cyl" = "cyl", "cty" = "cty", "displ" = "displ"), 
                          selected = 1),
      
      checkboxInput("checkbox", label = "Elige", value = TRUE)

      
      
    ),
    mainPanel(
      plotOutput("grafica")
    )
    
  )
)



server <- function(input,output){
  
  # MI SERVIDOR:
  
  output$grafica <- renderPlot({
    
    # Hacer gráfica
    
    p <- ggplot(mpg, aes_string(x=input$varx,y=input$vary))+geom_point()
    
    if(input$checkbox){
      
      p <- p+facet_wrap(~manufacturer, ncol=3)

    }
    
    p
    
  })
  
  
  
}

shinyApp(ui=ui,server=server)




  