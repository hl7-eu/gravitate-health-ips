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


* entry[+].fullUrl = "urn:uuid:9d7be868-8264-4d94-ad04-ef04ecc92e51" // Medication 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = 9d7be868-8264-4d94-ad04-ef04ecc92e51


* entry[+].fullUrl = "urn:uuid:fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et" // Medication 2 "Paracetamol 500 mg"
* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et


* entry[+].fullUrl = "urn:uuid:fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu" // Medication 3 - "Pentasa 1 g"
* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu

// ======== COMPOSITION
Instance: matilda-comp
InstanceOf: Composition
Title:   "[Composition] Matilda Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary Composition for Matilda Gravitate"
* id = "gravitate-Matilda"
* status = #final
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
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Dr. Ana Lopez
</div>"
* name.family = "Lopez"
* name.given = "Ana"
* name.prefix = "Dr."

// == CONDITIONS ===


// --- "Diabetes type 1"
Instance: matilda-cond-1
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Crohn's disease 
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#34000006 "Crohn's disease"
* code.text = "Crohn's disease"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(urn:uuid:45cd0bd4-f685-4117-a9f0-5c53fffb7266) "Dr. Ana Lopez"



// ====== MEDICATION STATEMENTS

Instance: matilda-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline

* status = #active
* medicationReference = Reference(fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et) "Monuril 3g granules for oral solution"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: matilda-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

Instance: matilda-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(9d7be868-8264-4d94-ad04-ef04ecc92e51) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"


// ====== MEDICATIONS

Instance: 9d7be868-8264-4d94-ad04-ef04ecc92e51
InstanceOf: Medication
Usage: #inline

* code.coding[0] = $spor-man#EU/1/96/007/035 "Humalog Mix50"
* code.coding[+] = $phpid#0x073AF2E5B92AE19E8B67635AFFB3D6CA "insulin lispro, 100 units/ml, suspension for injection"
// UK dm+d "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
* code.coding[+] = http://snomed.info/sct/83821000000107#13884911000001102 "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
* code.coding[+] = $atc#A10AD04 "insulin lispro"
* form = $edqm#11202000 "Suspension for injection"
* ingredient.itemCodeableConcept = $unii#GFX7QIS1II "insulin lispro"
* ingredient.itemCodeableConcept.text = "insulin lispro"
* ingredient.strength.numerator = 100 'U'
* ingredient.strength.denominator = 1 'ml'


Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et
InstanceOf: Medication
Usage: #inline


* code.coding[0] = $spor-man#PL31654/0006 "Monuril"
* code.coding[+] = $phpid#0xE857DA811B4A6F3BD57810C45D2EA1ED "Fosfomycin, 3g, Granules for oral solution"
* code.coding[+] = $atc#J01XX01 "fosfomycin"
* form = $edqm#10112000 "Granules for oral solution"
* ingredient.itemCodeableConcept = $unii#7FXW6U30GY "FOSFOMYCIN TROMETHAMINE"
* ingredient.itemCodeableConcept.text = "FOSFOMYCIN TROMETAMOL"
* ingredient.strength.numerator = 5.631 'g'
* ingredient.strength.denominator = 1 '{sachet}'




Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2f7eu
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#R01AA05 "oxymetazoline"
// * form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator = 0.05 'mg'
* ingredient.strength.denominator = 1 'ml'
