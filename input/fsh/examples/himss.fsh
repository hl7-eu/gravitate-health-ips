Instance: HIMSS-Alicia
InstanceOf: Bundle-uv-ips
Title:   "Alicia HIMSS IPS"
Usage: #example
Description: "Example of International Patient Summary for Alicia HIMSS"
/*
Alicia is Italian, 26 years old fresh school teacher. She is married and is pregnant to her first child at the initial stages. Alicia is passionate about traveling and she travels frequently with travel groups, friends and her husband, specially within  Turkey where she spends good portion of her holidays.


Alicia has been diagnosed  with several allergies, especially to lactose. she also faces gestational diabetes during her pregnancy with minor hypertension disorders. Therefore, she needs to follow a specific care plan and take some medications.


She wants to feel safe and keep her travel lifestyle as long as she can during pregnancy. Alicia also aims to self-manage her health conditions.


Alicia is comfortable with using smartphones and navigating the internet.
Will the baby born in the journey? - Stay until the end

*/



* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "alicia-ips-himss"
* type = #document
* timestamp = "2024-05-20T09:22:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/alicia-comp-himss" // Composition
* entry[=].resource = alicia-comp-himss
* entry[+].fullUrl = "https://myserver.org/Patient/alicia-patient-himss" // Patient
* entry[=].resource = alicia-patient-himss
* entry[+].fullUrl = "https://myserver.org/Practitioner/alicia-pract-himss" // Practictioner
* entry[=].resource = alicia-pract-himss

* entry[+].fullUrl = "https://myserver.org/Condition/alicia-cond-1-himss" // Condition 2
* entry[=].resource = alicia-cond-1-himss
* entry[+].fullUrl = "https://myserver.org/Condition/alicia-cond-2-himss" // Condition 2
* entry[=].resource = alicia-cond-2-himss



* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-1-himss" // Medication Statement 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = alicia-med-stat-1-himss
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-2-himss" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = alicia-med-stat-2-himss


* entry[+].fullUrl = "https://myserver.org/AllergyIntolerance/cb6e84fa-4302-4569-ac1c-6b1b32507d16-himss" 
* entry[=].resource = cb6e84fa-4302-4569-ac1c-6b1b32507d16-himss
* entry[+].fullUrl = "https://myserver.org/AllergyIntolerance/1dff4474-fa08-4f45-8260-dbb23094bf05-himss" 
* entry[=].resource = 1dff4474-fa08-4f45-8260-dbb23094bf05-himss



* entry[+].fullUrl = "https://myserver.org/Medication/9d7be868-8264-4d94-ad04-ef04ecc92e50-himss" 
* entry[=].resource = 9d7be868-8264-4d94-ad04-ef04ecc92e50-himss

* entry[+].fullUrl = "https://myserver.org/Medication/de131e15-ed13-4b31-b38c-3204a84d99c5-himss"
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c5-himss




// ====================================================== COMPOSITION ======================================================
Instance: alicia-comp-himss
InstanceOf: Composition
Title:   "Alicia HIMSS's IPS Composition"
Usage: #inline
Description: "Example of International Patient Summary for Alicia HIMSS"
* id = "gravitate-Alicia"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(alicia-patient-himss) "Alicia HIMSS"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(alicia-pract-himss) "Dr. Walter Waltz"
* title = "Patient Summary (Alicia HIMSS)"
* confidentiality = #N

* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"

* section[=].entry = Reference(cb6e84fa-4302-4569-ac1c-6b1b32507d16-himss) "Lactose Intolerance"
* section[=].entry[+] = Reference(1dff4474-fa08-4f45-8260-dbb23094bf05-himss) "Hay fever (pollen)"

// ====================================================== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"

* section[=].entry[0] = Reference(alicia-cond-1-himss) "diabetes"
* section[=].entry[+] = Reference(alicia-cond-2-himss) "hypertension" 



// ====================================================== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.div = "<div>Medication list Reported</div>"
* section[=].text.status = #additional

* section[=].entry[0] = Reference(alicia-med-stat-1) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"


// ====================================================== PATIENT ======================================================
Instance: alicia-patient-himss
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#IT "Italy"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"


* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "alicia-1-himss"
* active = true
* name.family = "HIMSS"
* name.given = "Alicia"
* gender = #female
* birthDate = "1998-01-01" 

// ====================================================== Practitioner =========================================================
Instance: alicia-pract-himss
InstanceOf: Practitioner
Usage: #inline

* name.family = "Waltz"
* name.given = "Walter"
* name.prefix = "Dr."


// ====================================================== ALLERGY INTOLERANCE ======================================================


Instance: cb6e84fa-4302-4569-ac1c-6b1b32507d16-himss
InstanceOf: AllergyIntolerance
Usage: #inline

* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#47703008 "Lactose"
// * reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
// * reaction.manifestation.text = "Hay fever"
* patient = Reference(alicia-patient-himss) "alicia HIMSS"

// == ALLERGIES ===
Instance: 1dff4474-fa08-4f45-8260-dbb23094bf05-himss
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#256259004 "Pollen"
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever"
* patient = Reference(alicia-patient-himss) "alicia HIMSS"


// ====================================================== CONDITIONS ======================================================

// --- diabetes
Instance: alicia-cond-1-himss
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#11687002 "Gestational diabetes mellitus (disorder)"
* code.text = "Gestational diabetes mellitus (disorder)"
* subject = Reference(alicia-patient-himss) "alicia HIMSS"
* onsetDateTime = "2023"

// --- hypertension
Instance: alicia-cond-2-himss
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* code.text = "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(alicia-patient-himss) "alicia HIMSS"
* onsetDateTime = "2022"
* asserter = Reference(alicia-pract-himss) "Dr. Walter Waltz"


// ====================================================== MEDICATION STATEMENTS ======================================================

Instance: alicia-med-stat-1-himss
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(de131e15-ed13-4b31-b38c-3204a84d99c5-himss) "Irbesartan 75 mg Tablet"
* subject = Reference(alicia-patient-himss) "Alicia HIMSS"
* dosage.route = $edqm#20053000 "Oral use"

Instance: alicia-med-stat-2-himss
InstanceOf: MedicationStatement
Usage: #inline

* status = #active
* medicationReference = Reference(metformin-himss) "Metformin 500 mg Tablet"
* subject = Reference(alicia-patient-himss) "Alicia HIMSS"
* dosage.route = $edqm#20066000 "Subcutaneous use"

// ====================================================== MEDICATIONS ======================================================
// "bictegravir/emtricitabine/tenofovir alafenamide"
Instance: de131e15-ed13-4b31-b38c-3204a84d99c5-himss
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EMEA/H/C/000142 "Karvea 75 mg Tablet"
* code.coding[+] = $phpid#0x8DFB446EDB3B8AE508AE493827A704E4 "Irbesartan, 75 mg/ 1 tablet, Tablet"
* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#J0E2756Z7N "irbesartan"
* ingredient.itemCodeableConcept.text = "irbesartan"
* ingredient.strength.numerator.value = 75
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}

Instance: 9d7be868-8264-4d94-ad04-ef04ecc92e50-himss
InstanceOf: Medication
Usage: #inline


* code.coding[0] = $spor-man#xxx ""
* code.coding[+] = $phpid#xxxx ""

* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#9100L32L2N "metformin"
* ingredient.itemCodeableConcept.text = "metformin"
* ingredient.strength.numerator.value = 500
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}

