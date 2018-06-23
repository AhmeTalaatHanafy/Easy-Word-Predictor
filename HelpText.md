## WELCOME

This web application was developed as part of the **Data Science Capstone Project [coursera]**. The goal of this project is to build a shiny app for predicting the next word after user partial phrase input, similar to the text predction at most of today's smart phones.

### Predction Technique:
* Using **Back-Off algorithm**, we'll predict the next word of a user input sentence

1. First, a 4Ns-Gram will be used (user's last 3 input words should match the 4Ns-Gram first three.)                 
2. If no 4Ns-Gram matching, Back-Off to 3Ns-Gram 'll be used (user's last 2 input words should match the 3Ns-Gram ones.)                     
3. If no 3Ns-Gram matching, Back-Off to 2Ns-Gram 'll be used (user's last word shouls match the 2Ns-Gram first one.)                        
4. If no 2Ns-Gram matching, Back-Off to the highest frequent words.

### Using Steps:
1. User must **input a partial phrase** to the sidebar textbox and then hit the **Predict Button**.          
2. System will predict the next word using the illustrated technique and will refer to the used method.

### Notes:

* This App was Developed by: **Ahmed Talaat Hanafy [06- 23 - 2018]**

* You can find Project files at Github [Repo](https://github.com/AhmeTalaatHanafy/Easy-Word-Predictor.git)

* You can find the Project Presentation at [link](https://rpubs.com/Ahmed_Talaat/Easy_Word_Predictor)

