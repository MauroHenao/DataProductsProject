library(shiny)
prediction= function(cly,hp,wt,am) 
      {
        set.seed(123)
        mtcars2=mtcars
        mtcars2$cyl=as.factor(mtcars2$cyl)
        mtcars2$vs=as.factor(mtcars2$vs)
        mtcars2$am=as.factor(mtcars2$am)
        mtcars2$gear=as.factor(mtcars2$gear)
        mtcars2$carb=as.factor(mtcars2$carb)
        model1=lm(mpg~cyl+hp+wt+am,data = mtcars2)
        test1=data.frame(cyl=as.factor(cly),hp=hp,wt=wt,am=as.factor(am))
        return(predict(model1,test1))
      }


shinyServer
(  
  function(input, output) 
  {    
    output$Pred <- renderPrint({prediction(input$cly,input$hp,input$wt,input$am)})
  
  }
)