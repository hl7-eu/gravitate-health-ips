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

1. Metformin 500 mg PO with the two largest meals → slowly titrate to 1 g BID
	
First-line for insulin resistance; ↓ progression to diabetes in metabolic-syndrome RCTs and offers a small independent MACE benefit. Observational data also suggest a lower risk of prostate-cancer progression among metformin users.  
	
GI upset (start low, go-slow); avoid in eGFR < 30 mL/min; yearly B12 level.
	 

2. Atorvastatin 40 mg PO nightly
	
Statins are guideline-mandated for primary ASCVD prevention in adults with multiple risk factors (MetSyn confers ≈ 2-fold risk). Cohort analyses after a prostate-cancer diagnosis show improved overall and cancer-specific survival in statin users.  
	
Baseline & 6-week LFTs; myalgia → check CK; counsel on CYP3A4 interactions (e.g., macrolides while travelling).
	 

3. Lisinopril 10 mg PO daily (or Losartan 50 mg if cough)
	
ACEI/ARB is first-line for hypertension per 2023 ESH/ACC update and improves endothelial and renal outcomes in MetSyn. Added BP control synergises with statin and metformin to cut composite CV events. 
	
Start after confirming K⁺ < 5.0 mmol/L and creatinine stable; re-check both at 1–2 weeks; avoid NSAID over-use on trips.
	 

4. Semaglutide 2.4 mg SC once weekly
	
SELECT CV-outcomes trial showed 20 % MACE reduction plus durable 10 % weight loss in overweight/obese adults without diabetes—ideal for high-travel lifestyles because it’s once-weekly and refrigeration-stable for 48 h. No known interaction with prostate-cancer care. 
	
Transient nausea; stop if pancreatitis symptoms; teach pen handling for time-zone shifts; register pen with airline security.
	 

5. Finasteride 5 mg PO daily — only if Alex remains on active surveillance or has LUTS/BPH
	
5-α-reductase inhibition shrinks prostate, eases LUTS, and may prolong time on active surveillance (phase-3 FINESSE trial underway). Useful when frequent international PSA testing is impractical. 
	
Lowers PSA by ≈ 50 %—lab must adjust result; counsel on sexual AEs; rare depression. Re-image MRI schedule per urologist.
	 
*/



* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Alex-ips-1"
* type = #document
* timestamp = "2025-06-04T09:22:00+02:00"
* entry[+].fullUrl = "https://myserver.org/Composition/Alex-comp" // Composition
* entry[=].resource = Alex-comp
* entry[+].fullUrl = "https://myserver.org/Patient/Alex-patient" // Patient
* entry[=].resource = Alex-patient
* entry[+].fullUrl = "https://myserver.org/Practitioner/Alex-pract" // Practictioner
* entry[=].resource = Alex-pract

* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-1" // Condition 2
* entry[=].resource = Alex-cond-1
* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-2" // Condition 2
* entry[=].resource = Alex-cond-2
* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-3" // Condition 2
* entry[=].resource = Alex-cond-3
* entry[+].fullUrl = "https://myserver.org/Condition/Alex-cond-4" // Condition 2
* entry[=].resource = Alex-cond-4


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-1" // Metformin 500 mg PO with the two largest meals → slowly titrate to 1 g BID
* entry[=].resource = Alex-med-stat-1
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-2" // Atorvastatin 40 mg PO nightly
* entry[=].resource = Alex-med-stat-2
//* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-3" // Lisinopril 10 mg PO daily
//* entry[=].resource = Alex-med-stat-3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-4" // Semaglutide 2.4 mg SC once weekly
* entry[=].resource = Alex-med-stat-4
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Alex-med-stat-5" // Finasteride 5 mg PO daily
* entry[=].resource = Alex-med-stat-5



* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-1" 
* entry[=].resource = alex-med-1

* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-2"
* entry[=].resource = alex-med-2

//* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-3" 
//* entry[=].resource = alex-med-3

* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-4" 
* entry[=].resource = alex-med-4
* entry[+].fullUrl = "https://myserver.org/Medication/alex-med-5" 
* entry[=].resource = alex-med-5




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

* section[=].entry[+] = Reference(Alex-cond-1) "Metabolic Syndrome"
* section[=].entry[+] = Reference(Alex-cond-2) "Prostate Cancer" 
* section[=].entry[+] = Reference(Alex-cond-3) "DT2M" 
* section[=].entry[+] = Reference(Alex-cond-4) "Overweigth" 

// ====================================================== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.div = "<div>Medication list Reported</div>"
* section[=].text.status = #additional

* section[=].entry[+] = Reference(Alex-med-stat-1) "Metformin 500 mg PO with the two largest meals → slowly titrate to 1 g BID"
* section[=].entry[+] = Reference(Alex-med-stat-2) "Atorvastatin 40 mg PO nightly"
//* section[=].entry[+] = Reference(Alex-med-stat-3) "Lisinopril 10 mg PO daily"
* section[=].entry[+] = Reference(Alex-med-stat-4) "Semaglutide 2.4 mg SC once weekly"
* section[=].entry[+] = Reference(Alex-med-stat-5) "Finasteride 5 mg PO daily"


// ====================================================== PATIENT ======================================================
Instance: Alex-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#FR "France"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"

* identifier[+].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Alex-1"
* identifier[+].system = "keycloak-id"
* identifier[=].value = "66dfc284-c19e-427b-914e-b3156bdc86d6"
* active = true
* name.family = "Gravitate"
* name.given = "Alex"
* gender = #male
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
* code = $sct#237602007 "Metabolic syndrome X"
* code.text = "Metabolic syndrome X"
* subject = Reference(Alex-patient) "Alex Gravitate"

// --- HIV
Instance: Alex-cond-2
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#1259388006 "Primary carcinoma of prostate"
* code.text = "Primary carcinoma of prostate"
* subject = Reference(Alex-patient) "Alex Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(Alex-pract) "Dr. Walter Waltz"


// --- Trigeminal neuralgia
Instance: Alex-cond-3
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#44054006 "Diabetes mellitus type 2"
* code.text = "Diabetes mellitus type 2 (disorder)"
* subject = Reference(Alex-patient) "Alex Gravitate"
* subject.identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* subject.identifier[=].value = "Alex-1"

* onsetDateTime = "2018"
* asserter = Reference(Alex-pract) "Dr. Walter Waltz"

// --- Overweight
Instance: Alex-cond-4
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#238131007 "Overweight"
* code.text = "Overweight"
* subject = Reference(Alex-patient) "Alex Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(Alex-pract) "Dr. Walter Waltz"

// ====================================================== MEDICATION STATEMENTS ======================================================


Instance: Alex-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-1) "Metformin 500 mg PO with the two largest meals → slowly titrate to 1 g BID"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Alex-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-2) "Atorvastatin 40 mg PO nightly"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

/*
Instance: Alex-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-3) "Lisinopril 10 mg PO daily"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
*/
Instance: Alex-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-4) "Semaglutide 2.4 mg SC once weekly"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: Alex-med-stat-5
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(alex-med-5) "Finasteride 5 mg PO daily"
* subject = Reference(Alex-patient) "Alex Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
// ====================================================== MEDICATIONS ======================================================
// * section[=].entry[+] = Reference(Alex-med-stat-1) "Metformin 500 mg PO with the two largest meals → slowly titrate to 1 g BID"

Instance: alex-med-1
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://www.gravitatehealth.eu/sid/doc#himss-metformin "Metformin 500 mg tablets"
* code.coding[+] = $spor-man#himss-6 "Metformin 500 mg" 

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



// * section[=].entry[+] = Reference(Alex-med-stat-2) "Atorvastatin 40 mg PO nightly"

Instance: alex-med-2
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://www.gravitatehealth.eu/sid/doc#himss-Atorvastatin "Atorvastatin 40 mg"
* code.coding[+] = $spor-man#himss-7 "Atorvastatin 40 mg" 

* form = $edqm#10220000 "Coated tablet"
* ingredient.itemCodeableConcept = $unii#935E97BOY8 "FOLIC ACID"
* ingredient.itemCodeableConcept.text = "FOLIC ACID"
* ingredient.strength.numerator = 40 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


// * section[=].entry[+] = Reference(Alex-med-stat-3) "Lisinopril 10 mg PO daily"
/*
Instance: alex-med-3
InstanceOf: Medication
Usage: #inline
* code.coding[+] = $spor-man#himss-8 "Lisinopril 10 mg" 

* form = $edqm#10222000 "Effervescent tablet"
* form.text = "Effervescent tablet"
* ingredient.itemCodeableConcept = $unii#H0G9379FGK "Calcium carbonate"
* ingredient.itemCodeableConcept.text = "calcium carbonate"
* ingredient.strength.numerator = 10 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"
*/



//* section[=].entry[+] = Reference(Alex-med-stat-4) "Semaglutide 2.4 mg SC once weekly"
Instance: alex-med-4
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://www.gravitatehealth.eu/sid/doc#himss-semaglutide "Semaglutide 2.4 mg"

* code.coding[+] = $spor-man#himss-9 "Semaglutide 2.4 mg " 

* form = $edqm#10222000 "Effervescent tablet"
* form.text = "Effervescent tablet"
* ingredient.itemCodeableConcept = $unii#H0G9379FGK "Calcium carbonate"
* ingredient.itemCodeableConcept.text = "calcium carbonate"
* ingredient.strength.numerator = 2.4 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Dose"


//* section[=].entry[+] = Reference(Alex-med-stat-5) "Finasteride 5 mg PO daily"
Instance: alex-med-5
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://www.gravitatehealth.eu/sid/doc#himss-finasteride "Finasteride 5 mg"

* code.coding[+] = $spor-man#himss-10 "Finasteride 5 mg" 

* form = $edqm#10222000 "Effervescent tablet"
* form.text = "Effervescent tablet"
* ingredient.itemCodeableConcept = $unii#H0G9379FGK "Calcium carbonate"
* ingredient.itemCodeableConcept.text = "calcium carbonate"
* ingredient.strength.numerator = 5 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"



