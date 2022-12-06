// @Name: Instance Example
// @Description: An example of an instance of a Patient resource

Instance: Questionnaire
InstanceOf: Questionnaire
Description: "Questionnaire"

* status = #active
* description = "An questionnaire to gather personal info regarding mental stability"

* item[+]
  * linkId = "age"
  * type = #quantity
  * prefix = "1"
  * text = "What's your age?"

* item[+]
  * linkId = "social-sup"
  * type = #choice
  * prefix = "2"
  * text = "How's your Social Support?"
  * answerOption[+].valueCoding = https://system-so-and-so#None "None"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  
* item[+]
  * linkId = "workLife"
  * type = #choice
  * prefix = "3"
  * text = "How's your work Life ?"
  * answerOption[+].valueCoding = https://system-so-and-so#U "Unemployed/Retired"
  * answerOption[+].valueCoding = https://system-so-and-so#EM "Employed Manual"
  * answerOption[+].valueCoding = https://system-so-and-so#ENM "Employed non Manual"
  

* item[+]
  * linkId = "smoking"
  * type = #choice
  * prefix = "4"
  * text = "How many cigaretes do you smoke per day?"
  * answerOption[+].valueCoding = https://system-so-and-so#1 "Non Smoker"
  * answerOption[+].valueCoding = https://system-so-and-so#1 "1-5"
  * answerOption[+].valueCoding = https://system-so-and-so#2 "5-20"
  * answerOption[+].valueCoding = https://system-so-and-so#3 ">20"
  
* item[+]
  * linkId = "physical"
  * type = #choice
  * prefix = "5"
  * text = "How is your physical activity?"
  * answerOption[+].valueCoding = https://system-so-and-so#None "None"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  

* item[+]
  * linkId = "extrovert"
  * type = #choice
  * prefix = "6"
  * text = "How Extrovert do you feel?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"


* item[+]
  * linkId = "emotional"
  * type = #choice
  * prefix = "7"
  * text = "How emotional do you feel?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  
* item[+]
  * linkId = "nrdiagnoses"
  * type = #choice
  * prefix = "8"
  * text = "Nr of Diagnoses that you have?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some (2-3)"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"


* item[+]
  * linkId = "chronic"
  * type = #boolean
  * prefix = "9"
  * text = "Do you have a chronic afliction?"



* item[+]
  * linkId = "nrmedicine"
  * type = #choice
  * prefix = "10"
  * text = "Nr of medicines that you have?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some (2-3)"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"
  
* item[+]
  * linkId = "healthadvice"
  * type = #choice
  * prefix = "11"
  * text = "Did you receive any health advice?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"

* item[+]
  * linkId = "concern"
  * type = #choice
  * prefix = "12"
  * text = "Did you have any concern domains?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"


* item[+]
  * linkId = "shareinfo"
  * type = #choice
  * prefix = "13"
  * text = "How willing are you to share information?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
 
* item[+]
  * linkId = "mood"
  * type = #choice
  * prefix = "14"
  * text = "How's your mood level?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
 
* item[+]
  * linkId = "autonomy"
  * type = #choice
  * prefix = "15"
  * text = "How's your Autonomy?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  
* item[+]
  * linkId = "healthliteracy"
  * type = #choice
  * prefix = "16"
  * text = "How's your level of health literacy?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  
  
* item[+]
  * linkId = "toolsupport"
  * type = #choice
  * prefix = "17"
  * text = "How's your level of tool support interest?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"