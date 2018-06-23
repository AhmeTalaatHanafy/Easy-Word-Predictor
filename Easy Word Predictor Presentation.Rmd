---
title: "EASY WORD PREDICTOR"
author: "Ahmed Talaat Hanafy"
date: "June 23, 2018"
output: 
  slidy_presentation: 
    css: D:/01 Data Science_NTL2/01 R Programming/Working DIR/Easy_Word_Predictor/style01.css
    highlight: espresso
    keep_md: yes
---

## Introduction

**Easy Word Predictor** is a Shiny app developed as a part of the Data Science Capstone Project from JHU [coursera]. 

* **Goal:** 

    * **Easy Word Predictor** is capable of predicting the next word after user enters a partial phrase, similar to the text predction at most of today's smart phones.

* **Sources:**

    * You can find the App at [EASY WORD PREDICTOR](https://ahmedtala3at-ds.shinyapps.io/Easy_Word_Predictor/)

    * You can find the source files for the project at the Github [REPO](https://github.com/AhmeTalaatHanafy/Easy-Word-Predictor.git)


## App Illustration

* **Easy Word Predictor** is a simple user interface, easy to manipulate and fast word prediction application.

* The User simply will enter his words and then hit the **Predict** button. After that in a fraction of a second the predicted word will appear and also the prediction method.

* User is going to be familiar with the app from the first time, thanks to the simple and easy understandable UI design.


## Predection Technique

* Using **BACK-OFF Algorithm**, Easy Word Predictor 'll predict the next word of a user's input sentence.

1. First, a 4Ns-Gram will be used (user's last 3 input words should match the 4Ns-Gram first three.)                 
2. If no 4Ns-Gram matching, Back-Off to 3Ns-Gram 'll be used (user's last 2 input words should match the 3Ns-Gram ones.)                     
3. If no 3Ns-Gram matching, Back-Off to 2Ns-Gram 'll be used (user's last word shouls match the 2Ns-Gram first one.)                        
4. If no 2Ns-Gram matching, Back-Off to the highest frequent words.


## Conclusion

* At the end **Great Thanks for**:

1. JHU Professors and all who have participated in the Data Science Specialization. 
2. coursera for the magnificent effort in delivering the knowledge. 
3. SwiftKey for making this chance available for all learners.
4. Data Science Dojo for the [Intro. to Text Analytics with R](https://goo.gl/DMSwi4)






