ValueSet: PDcategoryVS
ValueSet: PDtypeVS


Profile:     PersonaDimension
Id:          example-persona-profile
Parent:      Observation
Title:       "Persona Dimension Profile"
Description: "Persona Dimension Profile"


* derivedFrom only Reference(QuestionnaireResponse)
* specimen 0..0
* bodySite 0..0
* value[x] only CodeableConcept or boolean or Quantity
* category from PDcategoryVS (required)
* code from PDtypeVS (required)