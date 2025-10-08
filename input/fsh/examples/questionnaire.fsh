//https://fhir.kl.dk/ffinst/Questionnaire-KLToolsCareEQ5D.html

Alias: LNC = http://loinc.org
Alias: UCUM = http://unitsofmeasure.org

CodeSystem: EQ5DLevelsCS
Id: eq5d-levels-cs
Title: "EQ-5D-5L Levels"
* ^content = #complete
* #1 "No problems"
* #2 "Slight problems"
* #3 "Moderate problems"
* #4 "Severe problems"
* #5 "Extreme problems / unable to"

ValueSet: EQ5DLevelsVS
Id: eq5d-levels-vs
Title: "EQ-5D-5L Levels VS"
* include codes from system EQ5DLevelsCS

// Optional: per-dimension value sets (can reuse the same VS for all)
ValueSet: EQ5D-Mobility-VS
Id: eq5d-mobility-vs
Title: "EQ-5D Mobility VS"
* include codes from system EQ5DLevelsCS

ValueSet: EQ5D-SelfCare-VS
Id: eq5d-selfcare-vs
Title: "EQ-5D Self-care VS"
* include codes from system EQ5DLevelsCS

ValueSet: EQ5D-UsualActivities-VS
Id: eq5d-usualactivities-vs
Title: "EQ-5D Usual activities VS"
* include codes from system EQ5DLevelsCS

ValueSet: EQ5D-PainDiscomfort-VS
Id: eq5d-pain-vs
Title: "EQ-5D Pain/Discomfort VS"
* include codes from system EQ5DLevelsCS

ValueSet: EQ5D-AnxietyDepression-VS
Id: eq5d-anxdep-vs
Title: "EQ-5D Anxiety/Depression VS"
* include codes from system EQ5DLevelsCS

Instance: Questionnaire-EQ5D-5L
InstanceOf: Questionnaire
Title: "EQ-5D-5L Questionnaire"
Usage: #example
* status = #active
* name = "EQ5D5L"
* title = "EQ-5D-5L"
* subjectType = #Patient
* experimental = false
* description = "EQ-5D-5L with five dimensions (5L) and EQ-VAS (0-100)"
* item[0].linkId = "d1"
* item[=].text = "Mobility"
* item[=].type = #choice
* item[=].answerValueSet = Canonical(EQ5D-Mobility-VS)
* item[1].linkId = "d2"
* item[=].type = #choice
* item[=].text = "Self-care"
* item[=].answerValueSet = Canonical(EQ5D-SelfCare-VS)
* item[2].linkId = "d3"
* item[=].type = #choice
* item[=].text = "Usual activities"
* item[=].answerValueSet = Canonical(EQ5D-UsualActivities-VS)
* item[3].linkId = "d4"
* item[=].type = #choice
* item[=].text = "Pain/Discomfort"
* item[=].answerValueSet = Canonical(EQ5D-PainDiscomfort-VS)
* item[4].linkId = "d5"
* item[=].type = #choice
* item[=].text = "Anxiety/Depression"
* item[=].answerValueSet = Canonical(EQ5D-AnxietyDepression-VS)
* item[5].linkId = "vas"
* item[=].type = #integer
* item[=].text = "EQ-VAS (0 worst to 100 best health today)"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension.valueInteger = 0
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 100