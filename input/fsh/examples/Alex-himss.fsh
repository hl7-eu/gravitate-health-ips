Instance: gravitate-alex-himss
InstanceOf: Bundle-uv-ips
Title:   "Alex Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Alex Gravitate"
/*
Alex
Age: 50 years.
male

He has been diagnosed with metabolic syndrome. He is active and travels a lot for his work

Recently he has been diagnosed with prostate cancer at an early stage. 
He needs to exchange his information with a lot of doctors that are not members of the same healthcare system, even internationally and where the healthcare providers have not the same level of digitalization


While travelling he needs to get medication and check for interaction with the regular medication he takes. 
He needs to share his medical record with several doctors that have not access to his medical history and files (IPS). He needs to grand consent to several doctor in the process for of his treatment.

The patient arrives at the hospital and checks in using a self-service system, which issues a wristband and registers their information. This check-in process automatically sends admission data to the hospital systems. The medical team receives the treatment plan, including prescribed medications. 


*/



* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Alex-ips-1"
* type = #document
* timestamp = "2025-06-04T09:22:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/Alex-comp" // Composition
* entry[=].resource = Alex-comp
* entry[+].fullUrl = "https://myserver.org/Patient/Alex-patient" // Patient
* entry[=].resource = Alex-patient
* entry[+].fullUrl = "https://myserver.org/Practitioner/Alex-pract" // Practictioner
* entry[=].resource = Alex-pract

* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-1" // Condition 2
* entry[=].resource = Alex-cond-1
* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-2" // Condition 2
* entry[=].resource = Alex-cond-2
//* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-3" // Condition 2
//* entry[=].resource = Alex-cond-3
//* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-4" // Condition 2
//* entry[=].resource = Alex-cond-4


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-1" // Medication Statement 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = Alex-med-stat-1
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-2" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = Alex-med-stat-2
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-3" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = Alex-med-stat-3



* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-1" 
* entry[=].resource = alex-med-1

* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-2"
* entry[=].resource = alex-med-2

* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-3" 
* entry[=].resource = alex-med-3





// ====================================================== COMPOSITION ======================================================
Instance: Alex-comp
InstanceOf: Composition
Title:   "Alex Gravitate's IPS Composition"
Usage: #inline
Description: "Example of International Patient Summary for Alex Gravitate"
* id = "gravitate-Alex"
* status = #final
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><b>Id:</b> gravitate-Alex<br/><b>status:</b> final<br/><b>Type:</b> Patient summary Document<br/><b>Subject:</b> Alex Gravitate<br/><b>Sections:</b> <br/><ul><li><b>Title:</b> Problem List<br/><b>Code:</b> Problem list Reported (11450-4) </li><br/><ul><li><b>Entry:</b> <a href="Condition-Alex-cond-1.html">HIV</a> </li><br/><li><b>Entry:</b> <a href="Condition-Alex-cond-2.html">Trigeminal neuralgia</a> </li><br/><li><b>Entry:</b> <a href="Condition-Alex-cond-3.html">Depression</a> </li><br/><li><b>Entry:</b> <a href="Condition-Alex-cond-4.html">Overweight</a> </li></ul><li><b>Title:</b> Medication Summary<br/><b>Code:</b> Hx of Medication use (10160-0) </li><br/><ul><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-1.html">BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-2.html">Calcium/Vit D</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-3.html">Folic Acid + Cyanocobalamin + Iodur 1 t QD</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-4.html">Carbamazepine  1 t TID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-5.html">Orlistat 1 cp TID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-6.html">St. John’s Wort 2 cp BID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Alex-med-stat-7.html">Collagen and magnesium supplements</a> </li><br/></ul></ul></div>"""
* text.status = #generated
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(Alex-patient) "Alex Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(Alex-pract) "Dr. Walter Waltz"
* title = "Patient Summary (Alex Gravitate)"
* confidentiality = #N

// ====================================================== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"

* section[=].entry[0] = Reference(Alex-cond-1) "Metabolic Syndrome"
* section[=].entry[+] = Reference(Alex-cond-2) "Prostate Cancer" 
//* section[=].entry[+] = Reference(Alex-cond-3) "" 
//* section[=].entry[+] = Reference(Alex-cond-4) "" 

// ====================================================== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.div = "<div>Medication list Reported</div>"
* section[=].text.status = #additional

* section[=].entry[0] = Reference(Alex-med-stat-1) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
* section[=].entry[+] = Reference(Alex-med-stat-2) "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* section[=].entry[+] = Reference(Alex-med-stat-3) "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"


// ====================================================== PATIENT ======================================================
Instance: Alex-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#FR "France"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* text.status = #generated

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
Age: 28 years.
I live with my boyfriend. 
PhD Student

Interests: 
I love reading and walking outdoors with my dog. I also love art and photography. 


Health Conditions:
HIV (diagnosed with 25 years) 
Trigeminal neuralgia
Depression 
Overweight
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Alex-1"
* identifier[+].system = "keycloak-id"
* identifier[=].value = "66dfc284-c19e-427b-914e-b3156bdc86d6"
* active = true
* name.family = "Gravitate"
* name.given = "Alex"
* gender = #female
* birthDate = "1975-10-05" 

// ====================================================== Practitioner =========================================================
Instance: Alex-pract
InstanceOf: Practitioner
Usage: #inline

* name.family = "Waltz"
* name.given = "Walter"
* name.prefix = "Dr."

// ====================================================== CONDITIONS ======================================================


// --- Depression
Instance: Alex-cond-1
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#237602007 "Metabolic syndrome X (disorder)"
* code.text = "Metabolic syndrome X"
* subject = Reference(Alex-patient) "Alex Gravitate"

// --- HIV
Instance: Alex-cond-2
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#1259388006 "Primary carcinoma of prostate (disorder)"
* code.text = "Primary carcinoma of prostate"
* subject = Reference(Alex-patient) "Alex Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(Alex-pract) "Dr. Walter Waltz"

/*
// --- Trigeminal neuralgia
Instance: Alex-cond-3
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#31681005 "Trigeminal neuralgia (disorder)"
* code.text = "Trigeminal neuralgia (disorder)"
//* subject = Reference(Alex-patient) "Alex Gravitate"
* subject.identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* subject.identifier[=].value = "Alex-1"

* onsetDateTime = "2018"
* asserter = Reference(Alex-pract) "Dr. Walter Waltz"

// --- Overweight
Instance: Alex-cond-4
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#238131007 "Overweight (finding)"
* code.text = "Overweight (finding)"
* subject = Reference(Alex-patient) "Alex Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(Alex-pract) "Dr. Walter Waltz"
*/
// ====================================================== MEDICATION STATEMENTS ======================================================
Instance: Alex-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-1) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Alex-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-2) "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Alex-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-3) "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


// ====================================================== MEDICATIONS ======================================================
// "bictegravir/emtricitabine/tenofovir alafenamide"
Instance: alex-med-1
InstanceOf: Medication
Usage: #inline

* code.coding[0] = $spor-man#EU/1/18/1289/001 "Biktarvy 30 mg/120 mg/15 mg film-coated tablets" 
* code.coding[+] = $phpid#0x073AF2E5B92AE19E8B67635AFFB3D9nq "Biktarvy 30 mg/120 mg/15 mg film-coated tablets" //not real PhPID
* code.coding[+] = http://snomed.info/sct#774856007 "Product containing only bictegravir and emtricitabine and tenofovir (medicinal product)" 
* code.coding[+] = $atc#J05AR20 "emtricitabine, tenofovir alafenamide and bictegravir"
* form = $edqm#10220000 "Coated tablet"

* ingredient.itemCodeableConcept = $unii#8GB79LOJ07 "bictegravir"
* ingredient.itemCodeableConcept.text = "bictegravir"
* ingredient.strength.numerator = 30 'mg'

* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"

* ingredient[+].itemCodeableConcept = $unii#G70B4ETF4S "emtricitabine"
* ingredient[=].itemCodeableConcept.text = "emtricitabine"
* ingredient[=].strength.numerator = 120 'mg'

* ingredient[=].strength.denominator.value = 1
* ingredient[=].strength.denominator.code = #15054000
* ingredient[=].strength.denominator.system = $edqm
* ingredient[=].strength.denominator.unit = "Tablet"

* ingredient[+].itemCodeableConcept = $unii#EL9943AG5J "tenofovir alafenamida"
* ingredient[=].itemCodeableConcept.text = "tenofovir alafenamida"
* ingredient[=].strength.numerator = 15 'mg'

* ingredient[=].strength.denominator.value = 1
* ingredient[=].strength.denominator.code = #15054000
* ingredient[=].strength.denominator.system = $edqm
* ingredient[=].strength.denominator.unit = "Tablet"

// "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
Instance: alex-med-2
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#PL31654/0092 "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* code.coding[+] = $phpid#0x6c47381b040e5b588db23b2272f22ppf "Folic Acid + Cyanocobalamin + Iodur 1 t QD" //not real PhPID
* code.coding[+] = $atc#B03B "VITAMIN B12 AND FOLIC ACID"
* form = $edqm#10220000 "Coated tablet"
* ingredient.itemCodeableConcept = $unii#935E97BOY8 "FOLIC ACID"
* ingredient.itemCodeableConcept.text = "FOLIC ACID"
* ingredient.strength.numerator = 30 'g'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


// "Calcium carbonate 1000 mg + Vitamin D3 880 UI"
Instance: alex-med-3
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://spor.ema.europa.eu/pmswi#68290 "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES" 
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Calcium Vitamin D" //not real PhPID
//* code.coding[+] = $atc#A12AA04 "calcium carbonate"
* form = $edqm#10222000 "Effervescent tablet"
* form.text = "Effervescent tablet"
* ingredient.itemCodeableConcept = $unii#H0G9379FGK "Calcium carbonate"
* ingredient.itemCodeableConcept.text = "calcium carbonate"
* ingredient.strength.numerator = 1000 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"

* ingredient[+].itemCodeableConcept = $unii#1C6V77QF41 "cholecalciferol"
* ingredient[=].itemCodeableConcept.text = "cholecalciferol"
* ingredient[=].strength.numerator = 880 '{UI}'
* ingredient[=].strength.denominator.value = 1
* ingredient[=].strength.denominator.code = #15054000
* ingredient[=].strength.denominator.system = $edqm
* ingredient[=].strength.denominator.unit = "Tablet"

