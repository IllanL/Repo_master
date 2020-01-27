# CONTROL POR EVENTOS:

# En este script se ven los eventos de click:


library(shiny)
library(ggplot2)

aaa=mpg

ui <- fluidPage(
  titlePanel("Visualización con ggplot y plotly"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      plotOutput("grafica", click="clickgrafica"),
      dataTableOutput("resultado")
    )
    
  )
)



server <- function(input,output){
  
  # MI SERVIDOR:
  
  output$grafica <- renderPlot({
    
    # Hacer gráfica
    
    ggplot(mpg, aes(x=cyl,y=hwy))+geom_point()
    
  })
  
  output$resultado <- renderDataTable({
    
    nearPoints(mpg, input$clickgrafica, threshold = 25)
    
  })
  
}

shinyApp(ui=ui,server=server)


