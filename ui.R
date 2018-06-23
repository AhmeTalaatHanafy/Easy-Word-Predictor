# [Easy Word Predictor] Data Science Capstone Project "JHU[coursera] + SwiftKey"
# by: Ahmed Talaat Hanafy [23 - 06 - 2018]

# find the Github Repo at: 

library(shiny)
library(markdown)

shinyUI(fluidPage(
    # app title
    titlePanel("EASY WORD PREDICTOR"),
    
    # app sidebar with textbox and submit button
    sidebarLayout(
        sidebarPanel(
            h4("Capstone Project, JHU[coursera]"),
            textInput("stringIN", "Enter a Pertial Phrase to Next Word Prediction", value = ""),
            submitButton("Predict"),
            br(), br(),
            helpText("By: Ahmed Talaat Hanafy")
        ),
        # app main panel contains 2 tabs
        mainPanel(
            tabsetPanel(
                tabPanel("App",
                         h2("Next Word Predicted"),
                         verbatimTextOutput("pred"),
                         br(),
                         h5("Your Input Sentence:"),
                         textOutput("stringOT"),
                         br(),
                         br(),
                         h5("Method of Prediction:"),
                         textOutput("method")
                ),
                tabPanel("Help",
                         includeMarkdown("./HelpText.md")
                )
            )
        )
    )
))

