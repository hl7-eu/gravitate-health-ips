// @Name: Instance Example
// @Description: An example of an instance of a Patient resource

Instance: Questionnaire-example
InstanceOf: Questionnaire
Description: "Questionnaire Example"

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
  * linkId = "sex"
  * type = #choice
  * prefix = "3"
  * text = "Please state you gender."
  * answerOption[+].valueCoding = https://system-so-and-so#F "Female"
  * answerOption[+].valueCoding = https://system-so-and-so#M "Male"
  * answerOption[+].valueCoding = https://system-so-and-so#O "Other"
  * answerOption[+].valueCoding = https://system-so-and-so#ND "Non-Disclosed"

* item[+]
  * linkId = "workLife"
  * type = #choice
  * prefix = "4"
  * text = "How's your work Life ?"
  * answerOption[+].valueCoding = https://system-so-and-so#U "Unemployed/Retired"
  * answerOption[+].valueCoding = https://system-so-and-so#EM "Employed Manual"
  * answerOption[+].valueCoding = https://system-so-and-so#ENM "Employed non Manual"
  

* item[+]
  * linkId = "smoking"
  * type = #choice
  * prefix = "5"
  * text = "How many cigaretes do you smoke per day?"
  * answerOption[+].valueCoding = https://system-so-and-so#1 "Non Smoker"
  * answerOption[+].valueCoding = https://system-so-and-so#1 "1-5"
  * answerOption[+].valueCoding = https://system-so-and-so#2 "5-20"
  * answerOption[+].valueCoding = https://system-so-and-so#3 ">20"
  
* item[+]
  * linkId = "physical"
  * type = #choice
  * prefix = "6"
  * text = "How is your physical activity?"
  * answerOption[+].valueCoding = https://system-so-and-so#None "None"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"

* item[+]
  * linkId = "organized"
  * type = #choice
  * prefix = "7"
  * text = "How organized are you?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"

* item[+]
  * linkId = "extrovert"
  * type = #choice
  * prefix = "8"
  * text = "How Extrovert do you feel?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"


* item[+]
  * linkId = "emotional"
  * type = #choice
  * prefix = "9"
  * text = "How emotional do you feel?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  
* item[+]
  * linkId = "nrdiagnoses"
  * type = #choice
  * prefix = "10"
  * text = "Nr of Diagnoses that you have?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some (2-3)"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"


* item[+]
  * linkId = "chronic"
  * type = #boolean
  * prefix = "11"
  * text = "Do you have a chronic afliction?"



* item[+]
  * linkId = "nrmedicine"
  * type = #choice
  * prefix = "12"
  * text = "Nr of medicines that you have?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some (2-3)"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"
  
* item[+]
  * linkId = "healthadvice"
  * type = #choice
  * prefix = "13"
  * text = "Did you receive any health advice?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"

* item[+]
  * linkId = "concern"
  * type = #choice
  * prefix = "14"
  * text = "Did you have any concern domains?"
  * answerOption[+].valueCoding = https://system-so-and-so#N "None"
  * answerOption[+].valueCoding = https://system-so-and-so#SINGLE "single"
  * answerOption[+].valueCoding = https://system-so-and-so#SOME "some"
  * answerOption[+].valueCoding = https://system-so-and-so#MANY "Many"


* item[+]
  * linkId = "shareinfo"
  * type = #choice
  * prefix = "15"
  * text = "How willing are you to share information?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
 
* item[+]
  * linkId = "mood"
  * type = #choice
  * prefix = "16"
  * text = "How's your mood level?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
 
* item[+]
  * linkId = "autonomy"
  * type = #choice
  * prefix = "17"
  * text = "How's your Autonomy?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  
* item[+]
  * linkId = "healthliteracy"
  * type = #choice
  * prefix = "18"
  * text = "How's your level of health literacy?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  

* item[+]
  * linkId = "digitalliteracy"
  * type = #choice
  * prefix = "19"
  * text = "How's your level of digital literacy?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"
  

* item[+]
  * linkId = "toolsupport"
  * type = #choice
  * prefix = "20"
  * text = "How's your level of tool support interest?"
  * answerOption[+].valueCoding = https://system-so-and-so#Low "Low"
  * answerOption[+].valueCoding = https://system-so-and-so#Medium "Medium"
  * answerOption[+].valueCoding = https://system-so-and-so#High "High"


Instance: QuestionnaireResponse-example
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example"

* status = #completed
//* description = "An questionnaire to gather personal info regarding mental stability"
* questionnaire = "https://server.fire.ly/r4/Questionnaire/196f47ee-45c1-470e-888c-742cb0098b72"
* item[+]
  * linkId = "age"
  * answer.valueQuantity = 20 'a'

* item[+]
  * linkId = "social-sup" 
  * answer.valueCoding = https://system-so-and-so.com#None "None"

* item[+]
  * linkId = "sex" 
  * answer.valueCoding = https://system-so-and-so.com#F "Female"

* item[+]
  * linkId = "workLife"
  * answer.valueCoding = https://system-so-and-so.com#U "Unemployed/Retired"

* item[+]
  * linkId = "smoking"
  * answer.valueCoding = https://system-so-and-so.com#1 "Non Smoker"
  
* item[+]
  * linkId = "physical"
  * answer.valueCoding = https://system-so-and-so.com#None "None"

* item[+]
  * linkId = "organized"
  * answer.valueCoding = https://system-so-and-so.com#None "None"

* item[+]
  * linkId = "extrovert"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"

* item[+]
  * linkId = "emotional"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"

  
* item[+]
  * linkId = "nrdiagnoses"
  * answer.valueCoding = https://system-so-and-so.com#SINGLE "single"

* item[+]
  * linkId = "chronic"
  * answer.valueBoolean = false


* item[+]
  * linkId = "nrmedicine"
  * answer.valueCoding = https://system-so-and-so.com#SINGLE "single"

  
* item[+]
  * linkId = "healthadvice"
  * answer.valueCoding = https://system-so-and-so.com#SINGLE "single"


* item[+]
  * linkId = "concern"
  * answer.valueCoding = https://system-so-and-so.com#SINGLE "single"


* item[+]
  * linkId = "shareinfo"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"
 
* item[+]
  * linkId = "mood"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"
 
* item[+]
  * linkId = "autonomy"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"
  
* item[+]
  * linkId = "healthliteracy"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"

* item[+]
  * linkId = "digitalliteracy"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"
  

* item[+]
  * linkId = "toolsupport"
  * answer.valueCoding = https://system-so-and-so.com#Low "Low"
