library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Smarter Keyboard App"),
  sidebarPanel(
    h3("Your Input"),
    br(),
    
    strong(""),
    textInput("text1", "Start typing a phrase below:", value = "This weekend we will watch a"),
    br(),
    
    selectInput("words1", "Number of predicted words do you wish to return",
                choices = list("1" = 1, "2" = 2,
                               "3" = 3, "4" = 4,
                               "5" = 5, "6" = 6, 
                               "7" = 7, "8" = 8, 
                               "9" = 9, "10" = 10), selected = 5),
    br(),
    
    strong("Find out your next word by clicking the button ->"),
    actionButton("button1", "Let's Go!")
    
    
  ),
  mainPanel(
    tabsetPanel(
      
      tabPanel("Smarter Keyboard Analysis Pane",
               
               h4('Your phrase was:'),
               verbatimTextOutput("text11"),
               
               h4('The app interprets your text as:'),
               verbatimTextOutput("text22"),
               
               h4('The words predicted based on your provided phrase:'),
               tableOutput("table1")
               
      ),
      
      tabPanel("Documentation",
               p("This demo could be a prototype touch-screen keyboard for a smart device. In the left pane,
                 you will enter your text, and the app will predict your next word, and show results in
                 the right pane. You will have options in terms of selecting how many predicted words do you wish to
                 return. By clicking 'Let's Go!' button, you will see the predicted words. Before returning a
                 favorable result, the 'Smarter Keyboard' algorithm will go through several steps: in each step,
                 where the algorithm is unable to find a favorable match, it will shorten user's input text and
                 run again to find a match. Each predicted word is accompanied by a log probability, the goal is
                 to decrease the running time." ),
               p("Again, thank you, enjoy this demo, and happy machine learning!"),
               br()
               
               )
               ))
               ))