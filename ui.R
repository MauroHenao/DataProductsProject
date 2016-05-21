shinyUI(
  pageWithSidebar(  
    headerPanel("Data Product's Project"),  
    sidebarPanel(    
      numericInput('cly', 'Number of cylinders',value = 4, min = 4, max = 8, step = 2),
      numericInput('hp', 'HorsePower',value = 100, min = 1, max = 1000, step = 1),
      numericInput('wt', 'Weight (pounds)',value = 1, min = 0, max = 1000, step = 0.1),
      numericInput('am', 'Transmission (Automatic-0/manual-1)',value = 1, min = 0, max = 1, step = 1)
    ), 
    mainPanel(    
      h3('Miles Per Galon of the Car'),
      verbatimTextOutput("Pred")
    )
  )
)