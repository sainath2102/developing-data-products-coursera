
library(shiny)

shinyUI(
  fluidPage(titlePanel("Iris Species Dataset"),

  sidebarLayout(
    sidebarPanel(
      radioButtons("category",h1("Select species",align="left"),c("Setosa"="setosa","Versicolor"="versicolor","Virginica"="virginica"),"Setosa")
    ),
    mainPanel(
      tabsetPanel(
      tabPanel(h3("Sepal Length"),h4('Sepal Length for the species',align="center"),plotOutput("slenhist"),h3(textOutput("slenstat")),plotOutput("slenbox")),
      tabPanel(h3("Sepal Width"),h4('Sepal Width for the species',align="center"),plotOutput("swidhist"),h3(textOutput("swidstat")),plotOutput("swidbox")),
      tabPanel(h3("Petal Length"),h4('Petal Length for the species',align="center"),plotOutput("plenhist"),h3(textOutput("plenstat")),plotOutput("plenbox")),
      tabPanel(h3("Petal Width"),h4('Petal Width for the species',align="center"),plotOutput("pwidhist"),h3(textOutput("pwidstat")),plotOutput("pwidbox"))
      )
    )
  )
))
