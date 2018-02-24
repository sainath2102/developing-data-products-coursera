library(datasets)
library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)

data <- iris

shinyServer(function(input, output) {
  
    output$slenhist <- renderPlot(
    {
      if(input$category=="setosa")
        data1 <- filter(select(data,Species,Sepal.Length),data$Species=="setosa") 
      else if(input$category=="versicolor")
        data1 <- filter(select(data,Species,Sepal.Length),data$Species=="versicolor")
      else if(input$category=="virginica")
        data1 <- filter(select(data,Species,Sepal.Length),data$Species=="virginica")  
      {
        p <- ggplot(data1,aes(Sepal.Length))
        p <- p + geom_histogram(fill="blue")
        print(p)
      }
    })
    
    output$slenbox <- renderPlot(
    {
      if(input$category=="setosa")
        data1 <- filter(select(data,Species,Sepal.Length),data$Species=="setosa") 
      else if(input$category=="versicolor")
        data1 <- filter(select(data,Species,Sepal.Length),data$Species=="versicolor")
      else if(input$category=="virginica")
        data1 <- filter(select(data,Species,Sepal.Length),data$Species=="virginica")
      q <- ggplot(data1,aes(x=Species,y=Sepal.Length)) + geom_boxplot(fill="red")
      print(q)
    })
    
    output$slenstat <- renderText(
      {
      if(input$category=="setosa")
        data1 <- filter(select(data,Sepal.Length),data$Species=="setosa") 
      else if(input$category=="versicolor")
        data1 <- filter(select(data,Sepal.Length),data$Species=="versicolor")
      else if(input$category=="virginica")
        data1 <- filter(select(data,Sepal.Length),data$Species=="virginica")
      summary(data1)
      })

    output$swidhist <- renderPlot(
      {
        if(input$category=="setosa")
          data2 <- filter(select(data,Sepal.Width),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data2 <- filter(select(data,Sepal.Width),data$Species=="versicolor")
        else if(input$category=="virginica")
          data2 <- filter(select(data,Sepal.Width),data$Species=="virginica")  
        {
          p <- ggplot(data2,aes(Sepal.Width))
          p <- p + geom_histogram(fill="green")
          print(p)
          }
      })
    output$swidbox <- renderPlot(
      {
        if(input$category=="setosa")
          data2 <- filter(select(data,Species,Sepal.Width),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data2 <- filter(select(data,Species,Sepal.Width),data$Species=="versicolor")
        else if(input$category=="virginica")
          data2 <- filter(select(data,Species,Sepal.Width),data$Species=="virginica")
        q <- ggplot(data2,aes(x=Species,y=Sepal.Width))
        q <- q + geom_boxplot(fill="orange")
        print(q)
      })
    
    output$swidstat <- renderText(
      {
        if(input$category=="setosa")
          data2 <- filter(select(data,Sepal.Width),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data2 <- filter(select(data,Sepal.Width),data$Species=="versicolor")
        else if(input$category=="virginica")
          data2 <- filter(select(data,Sepal.Width),data$Species=="virginica")
        summary(data2)
      })
    
    output$plenhist <- renderPlot(
      {
        if(input$category=="setosa")
          data3 <- filter(select(data,Petal.Length),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data3 <- filter(select(data,Petal.Length),data$Species=="versicolor")
        else if(input$category=="virginica")
          data3 <- filter(select(data,Petal.Length),data$Species=="virginica")  
        {
          p <- ggplot(data3,aes(Petal.Length))
          p <- p + geom_histogram(fill="red")
          print(p)
          }
      })
    output$plenbox <- renderPlot(
      {
        if(input$category=="setosa")
          data3 <- filter(select(data,Species,Petal.Length),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data3 <- filter(select(data,Species,Petal.Length),data$Species=="versicolor")
        else if(input$category=="virginica")
          data3 <- filter(select(data,Species,Petal.Length),data$Species=="virginica")
        {
        q <- ggplot(data3,aes(x=Species,y=Petal.Length))
        q <- q + geom_boxplot(fill="green")
        print(q)
        }
      })
    
    output$plenstat <- renderText(
      {
        if(input$category=="setosa")
          data3 <- filter(select(data,Petal.Length),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data3 <- filter(select(data,Petal.Length),data$Species=="versicolor")
        else if(input$category=="virginica")
          data3 <- filter(select(data,Petal.Length),data$Species=="virginica")
        summary(data3)
      })
    
    output$pwidhist <- renderPlot(
      {
        if(input$category=="setosa")
          data4 <- filter(select(data,Petal.Width),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data4 <- filter(select(data,Petal.Width),data$Species=="versicolor")
        else if(input$category=="virginica")
          data4 <- filter(select(data,Petal.Width),data$Species=="virginica")  
        {
          p <- ggplot(data4,aes(Petal.Width))
          p <- p + geom_histogram(fill="orange")
          print(p)
          }
      })
    output$pwidbox <- renderPlot(
      {
        if(input$category=="setosa")
          data4 <- filter(select(data,Species,Petal.Width),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data4 <- filter(select(data,Species,Petal.Width),data$Species=="versicolor")
        else if(input$category=="virginica")
          data4 <- filter(select(data,Species,Petal.Width),data$Species=="virginica")
        q <- ggplot(data4,aes(x=Species,y=Petal.Width))
        q <- q + geom_boxplot(fill="skyblue")
        print(q)
      })
    
    output$pwidstat <- renderText(
      {
        if(input$category=="setosa")
          data4 <- filter(select(data,Petal.Width),data$Species=="setosa") 
        else if(input$category=="versicolor")
          data4 <- filter(select(data,Petal.Width),data$Species=="versicolor")
        else if(input$category=="virginica")
          data4 <- filter(select(data,Petal.Width),data$Species=="virginica")
        summary(data4)
      })
  
}
)  

