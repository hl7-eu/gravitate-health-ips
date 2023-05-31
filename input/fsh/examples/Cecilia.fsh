Instance: gravitate-Cecilia
InstanceOf: Bundle-uv-ips
Title:   "Cecilia Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Cecilia Gravitate"


* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Cecilia-ips-1"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/cecilia-comp" // Composition
* entry[=].resource = cecilia-comp
* entry[+].fullUrl = "https://myserver.org/Patient/cecilia-patient" // Patient
* entry[=].resource = cecilia-patient
* entry[+].fullUrl = "https://myserver.org/Practitioner/cecilia-pract" // Practictioner
* entry[=].resource = cecilia-pract

* entry[+].fullUrl = "https://myserver.org/Condition/cecilia-cond-1" // Condition 1
* entry[=].resource = cecilia-cond-1
* entry[+].fullUrl = "https://myserver.org/Condition/cecilia-cond-2" // Condition 2
* entry[=].resource = cecilia-cond-2
* entry[+].fullUrl = "https://myserver.org/Condition/cecilia-cond-3" // Condition 3
* entry[=].resource = cecilia-cond-3
* entry[+].fullUrl = "https://myserver.org/Condition/cecilia-cond-4" // Condition 3
* entry[=].resource = cecilia-cond-4

* entry[+].fullUrl = "https://myserver.org/MedicationStatement/cecilia-med-stat-1" // Medication Statement 1
* entry[=].resource = cecilia-med-stat-1
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/cecilia-med-stat-2" // Medication Statement 2
* entry[=].resource = cecilia-med-stat-2
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/cecilia-med-stat-3" // Medication Statement 3
* entry[=].resource = cecilia-med-stat-3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/cecilia-med-stat-4" // Medication Statement 4
* entry[=].resource = cecilia-med-stat-4


* entry[+].fullUrl = "https://myserver.org/Medication/b50ae644-e0b7-4007-809f-26f493cbe36c" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe36c
* entry[+].fullUrl = "https://myserver.org/Medication/de131e15-ed13-4b31-b38c-3204a84d99c4" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c4
* entry[+].fullUrl = "https://myserver.org/Medication/9ac3356c-4ea4-4814-84c3-235484f2ef19" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef19


// ======== COMPOSITION
Instance: cecilia-comp
InstanceOf: Composition
Title:   "[Composition] Cecilia Gravitate's IPS"
Usage: #inline
Description: "Example of International Patient Summary for Cecilia Gravitate"
* id = "gravitate-Cecilia"
* status = #final
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><b>Id:</b> gravitate-Cecilia<br/><b>status:</b> final<br/><b>Type:</b> Patient summary Document<br/><b>Subject:</b> Cecilia Gravitate<br/><b>Sections:</b> <br/><ul><li><b>Title:</b> Problem List<br/><b>Code:</b> Problem list Reported (11450-4) </li><br/><ul><li><b>Entry:</b> <a href="Condition-cecilia-cond-1.html">COPD</a> </li><br/><li><b>Entry:</b> <a href="Condition-cecilia-cond-2.html">Diabetese Type 2</a> </li><br/><li><b>Entry:</b> <a href="Condition-cecilia-cond-3.html">Osteoporosis</a> </li><br/><li><b>Entry:</b> <a href="Condition-cecilia-cond-4.html">Congestive Heart Failure</a> </li><br/></ul><li><b>Title:</b> Medication Summary<br/><b>Code:</b> Hx of Medication use (10160-0) </li><br/><ul><li><b>Entry:</b> <a href="MedicationStatement-cecilia-med-stat-1.html">Fosamax 70 mg tablets</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-cecilia-med-stat-2.html">Metformine + sitagliptine</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-cecilia-med-stat-3.html">Fluticasone 92mcg + vilanterol 22mcg</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-cecilia-med-stat-4.html">Digoxin</a> </li><br/></ul></ul></div>"""
* text.status = #generated
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(cecilia-pract) "Dr. Anna Karlsson"
* title = "Patient Summary (Cecilia Gravitate)"
* confidentiality = #N


// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].entry[0] = Reference(cecilia-cond-1) "COPD"
* section[=].entry[+] = Reference(cecilia-cond-2) "Congestive Heart Failure" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(cecilia-cond-3) "Osteoporosis"
* section[=].entry[+] = Reference(cecilia-cond-4) "Diabetese Type 2" 


// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].entry[0] = Reference(cecilia-med-stat-1) "Fosamax 70 mg tablets"
* section[=].entry[+] = Reference(cecilia-med-stat-2) "Metformine + sitagliptine"
* section[=].entry[+] = Reference(cecilia-med-stat-3) "Fluticasone 92mcg + vilanterol 22mcg"
* section[=].entry[+] = Reference(cecilia-med-stat-4) "Digoxin"


// == PATIENT ===
Instance: cecilia-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#SWE "Sweden"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Cecilia-1"
* active = true
* name.family = "Gravitate"
* name.given = "Cecilia"
* gender = #female
* birthDate = "1946-05-05"

// == Practitioner ===
Instance: cecilia-pract
InstanceOf: Practitioner
Usage: #inline
* name.family = "Karlsson"
* name.given = "Anne"
* name.prefix = "Dr."



// == CONDITIONS ===
Instance: cecilia-cond-1
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#13645005 "Chronic obstructive lung disease"
* code.text = "COPD - Chronic obstructive pulmonary disease"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(cecilia-pract) "Dr. Anna Karlsson"

// --- "Congestive heart failure"
Instance: cecilia-cond-2
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(cecilia-pract) "Dr. Anna Karlsson"

Instance: cecilia-cond-3
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#64859006 "Osteoporosis"
* code.text = "Osteoporosis"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* onsetDateTime = "1993"

Instance: cecilia-cond-4
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#44054006 "Diabetes mellitus type 2"
* code.text = "Diabetes mellitus type 2"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"


// ====== MEDICATION STATEMENTS
Instance: cecilia-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(b50ae644-e0b7-4007-809f-26f493cbe36c) "Dimethyl fumarate 30 mg Tablet"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: cecilia-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(de131e15-ed13-4b31-b38c-3204a84d99c4) "Irbesartan 75 mg Tablet"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: cecilia-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2ef19) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

Instance: cecilia-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2ef19) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe36c
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[+] = $phpid#0x9982CA8A825D4561506CE808982E3B9D "dimethyl fumarate, 30 mg/ 1 tablet, Gastro-resistant tablet"
* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#10225000 "Gastro-resistant tablet"
* ingredient.itemCodeableConcept = $unii#FO2303MNI2 "dimethyl fumarate"
* ingredient.itemCodeableConcept.text = "dimethyl fumarate"
* ingredient.strength.numerator = 30 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"

Instance: de131e15-ed13-4b31-b38c-3204a84d99c4
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/97/049/001 "Karvea 75 mg/ 1 tablet, Tablet"
* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#J0E2756Z7N "irbesartan"
* ingredient.itemCodeableConcept.text = "irbesartan"
* ingredient.strength.numerator = 75 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef19
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#R01AA05 "oxymetazoline"
* form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator = 0.05 'mg'
* ingredient.strength.denominator = 1 'ml'
