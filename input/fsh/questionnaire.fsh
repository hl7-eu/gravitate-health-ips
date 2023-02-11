// @Name: Local Code Systems

// Define a local code system
CodeSystem: QuestionnaireDimensionCS
Id:         questi-dimens-cs
Title:     ""
Description: ""


* ^url = http://hl7.eu/fhir/ig/gravitate-health-ips/CodeSystem/questi-dimens-cs
* #None
    "None"
    "None"
* #F
    "Female"
    "Female"
* #M
    "Male"
    "Male"

* #O
    "Other Gender"
    "Other Gender"
* #ND
    "Non-disclosed gender"
    "Non-disclosed gender"
    
* #0
    "Non Smoker"

* #1
    "1-5"

* #2
    "6-20"

* #3
    ">20"

* #SINGLE
    "single"

* #SOME
    "some"

* #MANY
    "Many"

* #Low
    "Low"
    "Low"

* #Medium
    "Medium"
    "Medium"


* #High
    "High"
    "High"

* #U
    "Unemployed/Retired"

* #EM
    "Employed Manual"

* #ENM
    "Employed non Manual"



// @Name: Instance Example
// @Description: An example of an instance of a Patient resource

Instance: Questionnaire-example
InstanceOf: Questionnaire
Description: "Questionnaire Example"

* url = "https://myserver.org/Questionnaire/196f47ee-45c1-470e-888c-742cb0098b72"
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
  * answerOption[+].valueCoding = questi-dimens-cs#None "None"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"

* item[+]
  * linkId = "sex"
  * type = #choice
  * prefix = "3"
  * text = "Please state you gender."
  * answerOption[+].valueCoding = questi-dimens-cs#F "Female"
  * answerOption[+].valueCoding = questi-dimens-cs#M "Male"
  * answerOption[+].valueCoding = questi-dimens-cs#O "Other"
  * answerOption[+].valueCoding = questi-dimens-cs#ND "Non-Disclosed"

* item[+]
  * linkId = "workLife"
  * type = #choice
  * prefix = "4"
  * text = "How's your work Life ?"
  * answerOption[+].valueCoding = questi-dimens-cs#U "Unemployed/Retired"
  * answerOption[+].valueCoding = questi-dimens-cs#EM "Employed Manual"
  * answerOption[+].valueCoding = questi-dimens-cs#ENM "Employed non Manual"
  

* item[+]
  * linkId = "smoking"
  * type = #choice
  * prefix = "5"
  * text = "How many cigaretes do you smoke per day?"
  * answerOption[+].valueCoding = questi-dimens-cs#0 "Non Smoker"
  * answerOption[+].valueCoding = questi-dimens-cs#1 "1-5"
  * answerOption[+].valueCoding = questi-dimens-cs#2 "6-20"
  * answerOption[+].valueCoding = questi-dimens-cs#3 ">20"
  
* item[+]
  * linkId = "physical"
  * type = #choice
  * prefix = "6"
  * text = "How is your physical activity?"
  * answerOption[+].valueCoding = questi-dimens-cs#None "None"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"

* item[+]
  * linkId = "organized"
  * type = #choice
  * prefix = "7"
  * text = "How organized are you?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"

* item[+]
  * linkId = "extrovert"
  * type = #choice
  * prefix = "8"
  * text = "How Extrovert do you feel?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"


* item[+]
  * linkId = "emotional"
  * type = #choice
  * prefix = "9"
  * text = "How emotional do you feel?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"
  
* item[+]
  * linkId = "nrdiagnoses"
  * type = #choice
  * prefix = "10"
  * text = "Nr of Diagnoses that you have?"
  * answerOption[+].valueCoding = questi-dimens-cs#None "None"
  * answerOption[+].valueCoding = questi-dimens-cs#SINGLE "single"
  * answerOption[+].valueCoding = questi-dimens-cs#SOME "some (2-3)"
  * answerOption[+].valueCoding = questi-dimens-cs#MANY "Many"


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
  * answerOption[+].valueCoding = questi-dimens-cs#None "None"
  * answerOption[+].valueCoding = questi-dimens-cs#SINGLE "single"
  * answerOption[+].valueCoding = questi-dimens-cs#SOME "some (2-3)"
  * answerOption[+].valueCoding = questi-dimens-cs#MANY "Many"
  
* item[+]
  * linkId = "healthadvice"
  * type = #choice
  * prefix = "13"
  * text = "Did you receive any health advice?"
  * answerOption[+].valueCoding = questi-dimens-cs#None "None"
  * answerOption[+].valueCoding = questi-dimens-cs#SINGLE "single"
  * answerOption[+].valueCoding = questi-dimens-cs#SOME "some"
  * answerOption[+].valueCoding = questi-dimens-cs#MANY "Many"

* item[+]
  * linkId = "concern"
  * type = #choice
  * prefix = "14"
  * text = "Did you have any concern domains?"
  * answerOption[+].valueCoding = questi-dimens-cs#None "None"
  * answerOption[+].valueCoding = questi-dimens-cs#SINGLE "single"
  * answerOption[+].valueCoding = questi-dimens-cs#SOME "some"
  * answerOption[+].valueCoding = questi-dimens-cs#MANY "Many"


* item[+]
  * linkId = "shareinfo"
  * type = #choice
  * prefix = "15"
  * text = "How willing are you to share information?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"
 
* item[+]
  * linkId = "mood"
  * type = #choice
  * prefix = "16"
  * text = "How's your mood level?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"
 
* item[+]
  * linkId = "autonomy"
  * type = #choice
  * prefix = "17"
  * text = "How's your Autonomy?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"
  
* item[+]
  * linkId = "healthliteracy"
  * type = #choice
  * prefix = "18"
  * text = "How's your level of health literacy?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"
  

* item[+]
  * linkId = "digitalliteracy"
  * type = #choice
  * prefix = "19"
  * text = "How's your level of digital literacy?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"
  

* item[+]
  * linkId = "toolsupport"
  * type = #choice
  * prefix = "20"
  * text = "How's your level of tool support interest?"
  * answerOption[+].valueCoding = questi-dimens-cs#Low "Low"
  * answerOption[+].valueCoding = questi-dimens-cs#Medium "Medium"
  * answerOption[+].valueCoding = questi-dimens-cs#High "High"


Instance: QuestionnaireResponse-example
InstanceOf: QuestionnaireResponse
Description: "Questionnaire Response example"

* status = #completed
//* description = "An questionnaire to gather personal info regarding mental stability"
* questionnaire = "https://myserver.org/Questionnaire/196f47ee-45c1-470e-888c-742cb0098b72"
* item[+]
  * linkId = "age"
  * answer.valueQuantity = 20 'a'

* item[+]
  * linkId = "social-sup" 
  * answer.valueCoding = questi-dimens-cs#None "None"

* item[+]
  * linkId = "sex" 
  * answer.valueCoding = questi-dimens-cs#F "Female"

* item[+]
  * linkId = "workLife"
  * answer.valueCoding = questi-dimens-cs#U "Unemployed/Retired"

* item[+]
  * linkId = "smoking"
  * answer.valueCoding = questi-dimens-cs#0 "Non Smoker"
  
* item[+]
  * linkId = "physical"
  * answer.valueCoding = questi-dimens-cs#None "None"

* item[+]
  * linkId = "organized"
  * answer.valueCoding = questi-dimens-cs#Low "Low"

* item[+]
  * linkId = "extrovert"
  * answer.valueCoding = questi-dimens-cs#Low "Low"

* item[+]
  * linkId = "emotional"
  * answer.valueCoding = questi-dimens-cs#Low "Low"

  
* item[+]
  * linkId = "nrdiagnoses"
  * answer.valueCoding = questi-dimens-cs#SINGLE "single"

* item[+]
  * linkId = "chronic"
  * answer.valueBoolean = false


* item[+]
  * linkId = "nrmedicine"
  * answer.valueCoding = questi-dimens-cs#SINGLE "single"

  
* item[+]
  * linkId = "healthadvice"
  * answer.valueCoding = questi-dimens-cs#SINGLE "single"


* item[+]
  * linkId = "concern"
  * answer.valueCoding = questi-dimens-cs#SINGLE "single"


* item[+]
  * linkId = "shareinfo"
  * answer.valueCoding = questi-dimens-cs#Low "Low"
 
* item[+]
  * linkId = "mood"
  * answer.valueCoding = questi-dimens-cs#Low "Low"
 
* item[+]
  * linkId = "autonomy"
  * answer.valueCoding = questi-dimens-cs#Low "Low"
  
* item[+]
  * linkId = "healthliteracy"
  * answer.valueCoding = questi-dimens-cs#Low "Low"

* item[+]
  * linkId = "digitalliteracy"
  * answer.valueCoding = questi-dimens-cs#Low "Low"
  

* item[+]
  * linkId = "toolsupport"
  * answer.valueCoding = questi-dimens-cs#Low "Low"
