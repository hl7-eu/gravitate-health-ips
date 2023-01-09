Instance: gravitate-Matilda
InstanceOf: Bundle
Title:   "Matilda Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Matilda Gravitate"
/*
Matilda
Age: 72 years.
Married, with 2 married children
Retired

Interests:
Sewing
Dogs
Classical music

Medication & Therapies
Prescribed by doctor
Humira 40 mg
(adalimumab): solution for injection in prefilled pen
Paracetamol
Pentasa 1 g
Precribed by digestive doctor: dietetic recommendations
Additional (non prescribed)
Physical exercise (daily walk with dog)
Care Professional Concerns
Chronic disease, with potential
complications
I try to practice a moderate level of
physical activity, because it has positive
effects on my physical health
*/

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Matilda-ips-1"
* type = #document
* timestamp = "2021-04-18T09:22:00+02:00"
* entry[0].fullUrl = "matilda-comp" // Composition
* entry[=].resource = matilda-comp
* entry[+].fullUrl = "matilda-patient" // Patient
* entry[=].resource = matilda-patient
* entry[+].fullUrl = "matilda-pract" // Practictioner
* entry[=].resource = matilda-pract




* entry[+].fullUrl = "matilda-cond-1" // Condition 1
* entry[=].resource = matilda-cond-1

* entry[+].fullUrl = "matilda-med-stat-1" // Medication Statement 1 - "Humira 40 mg"
* entry[=].resource = matilda-med-stat-1
* entry[+].fullUrl = "matilda-med-stat-2" // Medication Statement 2 - "Paracetamol 500 mg"
* entry[=].resource = matilda-med-stat-2
* entry[+].fullUrl = "matilda-med-stat-3" // Medication Statement 2 - "Pentasa 1 g"
* entry[=].resource = matilda-med-stat-3


* entry[+].fullUrl = "9d7be868-8264-4d94-ad04-ef04ecc92e51" // Medication 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = 9d7be868-8264-4d94-ad04-ef04ecc92e51


* entry[+].fullUrl = "fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et" // Medication 2 "Paracetamol 500 mg"
* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et


* entry[+].fullUrl = "fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu" // Medication 3 - "Pentasa 1 g"
* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu

// ======== COMPOSITION
Instance: matilda-comp
InstanceOf: Composition
Title:   "[Composition] Matilda Gravitate's IPS"
Usage: #inline
Description: "Example of International Patient Summary Composition for Matilda Gravitate"
* id = "gravitate-Matilda"
* status = #final
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><b>Id:</b> gravitate-Matilda<br/><b>status:</b> final<br/><b>Type:</b> Patient summary Document<br/><b>Subject:</b> Matilda Gravitate<br/><b>Sections:</b> <br/><ul><li><b>Title:</b> Problem List<br/><b>Code:</b> Problem list Reported (11450-4) </li><br/><ul><li><b>Entry:</b> <a href="Condition-matilda-cond-1.html">Crohn's disease</a> </li><br/></ul><li><b>Title:</b> Medication Summary<br/><b>Code:</b> Hx of Medication use (10160-0) </li><br/><ul><li><b>Entry:</b> <a href="MedicationStatement-matilda-med-stat-1.html">Humira 40 mg</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-matilda-med-stat-2.html">Paracetamol 500 mg</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-matilda-med-stat-3.html">Pentasa 1g mesalazine</a> </li><br/></ul></ul></div>"""
* text.status = #generated


* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(matilda-pract) "Dr. Ana Lopez" 
* title = "Patient Summary (Matilda Gravitate)"
* confidentiality = #N



// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].entry[+] = Reference(matilda-cond-1) "Crohn's disease"

// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].entry[0] = Reference(matilda-med-stat-1) "Humira 40 mg"
* section[=].entry[+] = Reference(matilda-med-stat-2) "Paracetamol 500 mg"
* section[=].entry[+] = Reference(matilda-med-stat-3) "Pentasa 1g mesalazine"


// == PATIENT ===
Instance: matilda-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#ES "Spain"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Matilda-1"
* active = true
* name.family = "Gravitate"
* name.given = "Matilda"
* gender = #female
* birthDate = "1950-09-01" 


// == Practitioner ===

Instance: matilda-pract
InstanceOf: Practitioner
Usage: #inline
* name.family = "Lopez"
* name.given = "Ana"
* name.prefix = "Dr."

// == CONDITIONS ===


// --- "Diabetes type 1"
Instance: matilda-cond-1
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#34000006 "Crohn's disease"
* code.text = "Crohn's disease"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(matilda-pract) "Dr. Ana Lopez"



// ====== MEDICATION STATEMENTS

Instance: matilda-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline

* status = #active
* medicationReference = Reference(9d7be868-8264-4d94-ad04-ef04ecc92e51) "Humira 40 mg"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20066000 "Subcutaneous use"

Instance: matilda-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et) "PARACETAMOL 500 MG"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: matilda-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu) "Pentasa 1g mesalazine"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


// ====== MEDICATIONS

Instance: 9d7be868-8264-4d94-ad04-ef04ecc92e51
InstanceOf: Medication
Usage: #inline

* code.coding[0] = $spor-man#EU/1/96/007/035 "Humira 40 mg"
//* code.coding[+] = $phpid#0x073AF2E5B92AE19E8B67635AFFB3D6CA "Humira 40 mg solution for injection in pre-filled syringe 2 pre-filled syringes + 2 alcohol pads"
// UK dm+d "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
//* code.coding[+] = http://snomed.info/sct#388454007 "Product containing insulin lispro (medicinal product)"
* code.coding[+] = $atc#L04AB04 "adalimumab"
* form = $edqm#11201000 "Solution for injection"
* ingredient.itemCodeableConcept = $unii#FYS6T7F842 "adalimumab"
* ingredient.itemCodeableConcept.text = "adalimumab"
* ingredient.strength.numerator = 40 'mg'
* ingredient.strength.denominator = 1 'ml'


Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et
InstanceOf: Medication
Usage: #inline


* code.coding[0] = $spor-man#PL31654/0006 "DOLOCATIL 1 g tablets"
//* code.coding[+] = $phpid#0xE857DA811B4A6F3BD57810C45D2EA1ED "Fosfomycin, 3g, Granules for oral solution"
* code.coding[+] = $atc#N02BE01 "paracetamol"
* form = $edqm#10220000 "Coated tablet"
* ingredient.itemCodeableConcept = $unii#362O9ITL9D "ACETAMINOPHEN"
* ingredient.itemCodeableConcept.text = "ACETAMINOPHEN"
* ingredient.strength.numerator = 1000 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"



Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Pentasa Slow Release Tablets 1g"
//* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#A07EC02 "mesalazine"
* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#4Q81I59GXC "MESALAMINE"
* ingredient.itemCodeableConcept.text = "MESALAMINE"
* ingredient.strength.numerator = 1000 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"