# [Easy Word Predictor] Data Science Capstone Project "JHU[coursera] + SwiftKey"
# by: Ahmed Talaat Hanafy [23 - 06 - 2018]

# find the Github Repo at: 

library(shiny)
library(NLP)
library(tm)
library(stringr)

# loading the processed data files 

n4Gram <- readRDS("./Data/4n_gram.RData")
n3Gram <- readRDS("./Data/3n_gram.RData")
n2Gram <- readRDS("./Data/2n_gram.RData")

methodMesg <<- ""

# First making sure that the user's input is clean
## building the prediction function

Predict <- function(inp){
    inpClean <- removeNumbers(removePunctuation(tolower(inp)))
    inpSplit <- strsplit(inpClean, " ")[[1]]
    
# the Back-Off Algorith
    
    if(length(inpSplit) >= 3){ 
        #4Ns-Gram, matching the user's last 3 input words with 4Ns-Gram first 3 words
        inpSplit <- tail(inpSplit, 3) 
        if(identical(character(0), head(n4Gram[n4Gram$unigram == inpSplit[1] & 
                                        n4Gram$bigram == inpSplit[2] &
                                        n4Gram$trigram == inpSplit[3] , 4], 1))){
            Predict(paste(inpSplit[2], inpSplit[3], sep = " "))
        }
        else {
            methodMesg <<- "Next Word is Predicted using 4Ns-Gram."
            head(n4Gram[n4Gram$unigram == inpSplit[1] & 
                        n4Gram$bigram == inpSplit[2] & 
                        n4Gram$trigram == inpSplit[3], 4], 1)
        }
    }
    
    else if(length(inpSplit) == 2){
        #3Ns-Gram matching the user's last 2 input words with 3Ns-Gram first 2 words   
        inpSplit <- tail(inpSplit, 2)
        if(identical(character(0), head(n3Gram[n3Gram$unigram == inpSplit[1] &
                                        n3Gram$bigram == inpSplit[2], 3]))){
            Predict(inpSplit[2])
        }
        else {
            methodMesg <<- "Next Word is Predicted Using 3Ns-Gram."
            head(n3Gram[n3Gram$unigram == inpSplit[1] &
                        n3Gram$bigram == inpSplit[2], 3], 1)
        }
    }
    
    else if(length(inpSplit) == 1){
        #2Ns-Gram matching user's last word input to the 2Ns-Gram first word
        inpSplit <- tail(inpSplit, 1)
        if(identical(character(0), head(n2Gram[n2Gram$unigram == inpSplit[1], 2], 1))){
            methodMesg <<- "No Match Found. Returning the Highest Frequent Word [default]"
            head("the", 1)
        }
        else {
            methodMesg <<- "Next Word is Predicted Using 2Ns-Gram."
            head(n2Gram[n2Gram$unigram == inpSplit[1], 2], 1)
        }
    }
}


shinyServer(function(input, output) {
    
    #returning the prediction result and method message
    output$pred <- renderPrint({
        x <- Predict(input$stringIN)
        output$method <- renderText({methodMesg})
        x
    })
    
    #returning the input sentence
    output$stringOT <- renderText({input$stringIN})
    
})

