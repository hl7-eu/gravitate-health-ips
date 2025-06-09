Instance: gravitate-Renee
InstanceOf: Bundle-uv-ips
Title:   "Renee Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Renee Gravitate"
/*
Renee
Renée is a 75-year-old female person.

Renée was diagnosed with aortic stenosis after experiencing gradual onset of dyspnea and fatigue, which progressed to angina and occasional syncope. 

The patient is part of a cohort with a chronic disease: heart failure. 
Clinical staff access a dashboard with aggregated health data and can view the patient’s detailed profile.


After diagnosis, the patient is 
enrolled in a home-based 
Remote Patient Monitoring (RPM) 
program. 
Real-time data captured from medical devices in Renée’s home.
All these data are added to the chronic disease dataset. 

The patient experiences symptoms 
such as dyspnea and fatigue, 
which she reports through the 
Gravitate-Health app. She then requests ambulance assistance directly via the application.
During encounter, real-time data from the ambulance are linked to the patient’s profile.
All collected information is integrated into the chronic disease dataset.
Vital signs are transmitted into the medical record.

. aspirin 75 mg PO OD
	
Single antiplatelet therapy (SAPT) is guideline-supported before and after TAVR to prevent valve-thrombosis and atherothrombotic events. In the POPular-TAVI RCT, aspirin alone reduced bleeding without increasing stroke/MI compared with DAPT. 
	
Confirm no other indication for anticoagulation; hold only if proceduralists request. Check platelet count, ask about GI bleeding risk.
	 

2. Atorvastatin 40 mg PO nightly
	
High-intensity statins cut 90-day and 1-year mortality after TAVR and reduce peri-operative complications, beyond lipid lowering. 
	
Aim for LDL < 70 mg/dL. Monitor LFTs at baseline / 6–8 wk. Watch for myalgia, CK if symptomatic.
	 

3. Furosemide 20 mg PO AM (↑ PRN)
	
Loop diuretics relieve pulmonary congestion and orthopnoea, improving exercise tolerance; ~50 % of TAVR candidates need them. Use the lowest dose that keeps René euvolaemic. 
	
Preload dependence in severe AS means over-diuresis can precipitate syncope/renal drop. Daily weights, creatinine, BP, electrolytes.
	 

4. Ramipril 1.25 mg PO nightly (titrate q1-2 wk)
	
ACE-inhibition is now considered safe in severe AS; the RIAS RCT showed ramipril slowed LV-hypertrophy and was well-tolerated. Post-TAVR cohorts on ACEI/ARB have ↓ 2-year mortality.  
	
Start very low, uptitrate slowly with close BP checks (goal SBP < 140 mmHg but > 100 mmHg). Hold if creatinine rises > 30 % or K⁺ > 5.5 mmol/L.
	 

5. Bisoprolol 1.25 mg PO OD
	
Low-dose β-blockade can control exertional angina, rate-control AF and lessen valvulo-arterial impedance. Retrospective data show a 62 % reduction in all-cause mortality in symptomatic AS patients on β-blockers. 
	
Avoid if resting HR < 60 bpm, SBP < 100 mmHg, or moderate-severe AR. Start low, titrate slowly, reassess exercise tolerance and syncope.
	


*/



* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Renee-ips-1"
* type = #document
* timestamp = "2025-06-04T09:22:00+02:00"
* entry[+].fullUrl = "https://myserver.org/Composition/Renee-comp" // Composition
* entry[=].resource = Renee-comp
* entry[+].fullUrl = "https://myserver.org/Patient/Renee-patient" // Patient
* entry[=].resource = Renee-patient
* entry[+].fullUrl = "https://myserver.org/Practitioner/Renee-pract" // Practictioner
* entry[=].resource = Renee-pract

* entry[+].fullUrl = "https://myserver.org/Condition/Renee-cond-1" // Condition 2
* entry[=].resource = Renee-cond-1
* entry[+].fullUrl = "https://myserver.org/Condition/Renee-cond-2" // Condition 2
* entry[=].resource = Renee-cond-2
//* entry[+].fullUrl = "https://myserver.org/Condition/Renee-cond-3" // Condition 2
//* entry[=].resource = Renee-cond-3
//* entry[+].fullUrl = "https://myserver.org/Condition/Renee-cond-4" // Condition 2
//* entry[=].resource = Renee-cond-4


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-1" // Medication Statement 1 - "aspirin 75 mg PO OD"
* entry[=].resource = Renee-med-stat-1
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-2" // Medication Statement 2 - "Atorvastatin 40 mg PO nightly"
* entry[=].resource = Renee-med-stat-2
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-3" // Medication Statement 3 - "Furosemide 20 mg PO AM (↑ PRN)"
* entry[=].resource = Renee-med-stat-3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-4" // Medication Statement 4 - "Ramipril 1.25 mg PO nightly (titrate q1-2 wk)"
* entry[=].resource = Renee-med-stat-4
//* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-5" // Medication Statement 5 - "Bisoprolol 1.25 mg PO OD"
//* entry[=].resource = Renee-med-stat-5



* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-1" 
* entry[=].resource = renee-med-1

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-2"
* entry[=].resource = renee-med-2

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-3" 
* entry[=].resource = renee-med-3

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-4" 
* entry[=].resource = renee-med-4

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-5" 
* entry[=].resource = renee-med-5

// ====================================================== COMPOSITION ======================================================
Instance: Renee-comp
InstanceOf: Composition
Title:   "Renee Gravitate's IPS Composition"
Usage: #inline
Description: "Example of International Patient Summary for Renee Gravitate"
* id = "gravitate-Renee"
* status = #final
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><b>Id:</b> gravitate-Renee<br/><b>status:</b> final<br/><b>Type:</b> Patient summary Document<br/><b>Subject:</b> Renee Gravitate<br/><b>Sections:</b> <br/><ul><li><b>Title:</b> Problem List<br/><b>Code:</b> Problem list Reported (11450-4) </li><br/><ul><li><b>Entry:</b> <a href="Condition-Renee-cond-1.html">HIV</a> </li><br/><li><b>Entry:</b> <a href="Condition-Renee-cond-2.html">Trigeminal neuralgia</a> </li><br/><li><b>Entry:</b> <a href="Condition-Renee-cond-3.html">Depression</a> </li><br/><li><b>Entry:</b> <a href="Condition-Renee-cond-4.html">Overweight</a> </li></ul><li><b>Title:</b> Medication Summary<br/><b>Code:</b> Hx of Medication use (10160-0) </li><br/><ul><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-1.html">BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-2.html">Calcium/Vit D</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-3.html">Folic Acid + Cyanocobalamin + Iodur 1 t QD</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-4.html">Carbamazepine  1 t TID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-5.html">Orlistat 1 cp TID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-6.html">St. John’s Wort 2 cp BID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-Renee-med-stat-7.html">Collagen and magnesium supplements</a> </li><br/></ul></ul></div>"""
* text.status = #generated
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(Renee-patient) "Renee Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(Renee-pract) "Dr. Walter Waltz"
* title = "Patient Summary (Renee Gravitate)"
* confidentiality = #N

// ====================================================== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"

* section[=].entry[0] = Reference(Renee-cond-1) "Depression"
* section[=].entry[+] = Reference(Renee-cond-2) "HIV" 
//* section[=].entry[+] = Reference(Renee-cond-3) "Trigeminal neuralgia" 
//* section[=].entry[+] = Reference(Renee-cond-4) "Overweight" 

// ====================================================== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.div = "<div>Medication list Reported</div>"
* section[=].text.status = #additional

* section[=].entry[0] = Reference(Renee-med-stat-1) "aspirin 75 mg PO OD"
* section[=].entry[+] = Reference(Renee-med-stat-2) "Atorvastatin 40 mg PO nightly"
* section[=].entry[+] = Reference(Renee-med-stat-3) "Furosemide 20 mg PO AM (↑ PRN)"
* section[=].entry[+] = Reference(Renee-med-stat-4) "Ramipril 1.25 mg PO nightly (titrate q1-2 wk)"
//* section[=].entry[+] = Reference(Renee-med-stat-5) "Bisoprolol 1.25 mg PO OD"



// ====================================================== PATIENT ======================================================
Instance: Renee-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#FR "France"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"

* identifier[+].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Renee-1"
* identifier[+].system = "keycloak-id"
* identifier[=].value = "c693b6c7-8a8f-471d-a57d-69b59c797771"
* active = true
* name.family = "Gravitate"
* name.given = "Renee"
* gender = #female
* birthDate = "1950-10-05" 

// ====================================================== Practitioner =========================================================
Instance: Renee-pract
InstanceOf: Practitioner
Usage: #inline

* name.family = "Waltz"
* name.given = "Walter"
* name.prefix = "Dr."

// ====================================================== CONDITIONS ======================================================


// --- Aortic valve stenosis (disorder)
Instance: Renee-cond-1
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#60573004 "Aortic valve stenosis"
* code.text = "Aortic valve stenosis"
* subject = Reference(Renee-patient) "Renee Gravitate"

// --- Heart failure (disorder)
Instance: Renee-cond-2
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#84114007 "Heart failure"
* code.text = "Heart failure"
* subject = Reference(Renee-patient) "Renee Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(Renee-pract) "Dr. Walter Waltz"

/*
// --- Trigeminal neuralgia
Instance: Renee-cond-3
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#31681005 "Trigeminal neuralgia (disorder)"
* code.text = "Trigeminal neuralgia (disorder)"
//* subject = Reference(Renee-patient) "Renee Gravitate"
* subject.identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* subject.identifier[=].value = "Renee-1"

* onsetDateTime = "2018"
* asserter = Reference(Renee-pract) "Dr. Walter Waltz"

// --- Overweight
Instance: Renee-cond-4
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#238131007 "Overweight (finding)"
* code.text = "Overweight (finding)"
* subject = Reference(Renee-patient) "Renee Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(Renee-pract) "Dr. Walter Waltz"
*/
// ====================================================== MEDICATION STATEMENTS ======================================================

Instance: Renee-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-1) "aspirin 75 mg"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Renee-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-2) "Atorvastatin 40 mg PO nightly"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Renee-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-3) "Furosemide 20 mg PO AM (↑ PRN)"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: Renee-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-4) "Ramipril 1.25 mg PO nightly (titrate q1-2 wk)"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: Renee-med-stat-5
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-5) "Bisoprolol 1.25 mg PO OD"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

// ====================================================== MEDICATIONS ======================================================
// "bictegravir/emtricitabine/tenofovir alafenamide"


Instance: renee-med-1
InstanceOf: Medication
Usage: #inline

* code.coding[+] = https://www.gravitatehealth.eu/sid/doc#himss-Aspirin "Aspirin 75 mg" 
* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#XK4IUX8MNB "HYPERICUM PERFORATUM WHOLE"
* ingredient.itemCodeableConcept.text = "HYPERICUM PERFORATUM WHOLE"
* ingredient.strength.numerator = 75 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


// * section[=].entry[+] = Reference(Renee-med-stat-2) "Atorvastatin 40 mg PO nightly"
Instance: renee-med-2
InstanceOf: Medication
Usage: #inline
* code.coding[+] = https://www.gravitatehealth.eu/sid/doc#himss-Atorvastatin "Atorvastatin 40 mg" 
* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#H0G9379FGK "Calcium carbonate"
* ingredient.itemCodeableConcept.text = "calcium carbonate"
* ingredient.strength.numerator = 40 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"



//* section[=].entry[+] = Reference(Renee-med-stat-3) "Furosemide 20 mg PO AM (↑ PRN)"

Instance: renee-med-3
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://www.gravitatehealth.eu/sid/doc#himss-Furosemide "Furosemide 20 mg"
* code.coding[+] = $spor-man#himss-3 "Furosemide 20 mg PO AM (↑ PRN)" 

* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#XK4IUX8MNB "HYPERICUM PERFORATUM WHOLE"
* ingredient.itemCodeableConcept.text = "HYPERICUM PERFORATUM WHOLE"
* ingredient.strength.numerator = 20 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


//* section[=].entry[+] = Reference(Renee-med-stat-4) "Ramipril 1.25 mg PO nightly (titrate q1-2 wk)"


Instance: renee-med-4
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://www.gravitatehealth.eu/sid/doc#himss-ramipril "Ramipril 1.25 mg"

* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#TU2UN5CG9C "INFLUENZA A VIRUS A/WISCONSIN/588/2019 (H1N1) WHOLE"
* ingredient.itemCodeableConcept.text = "INFLUENZA A VIRUS A/WISCONSIN/588/2019 (H1N1) WHOLE"
* ingredient.strength.numerator = 1.25 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"

//* section[=].entry[+] = Reference(Renee-med-stat-5) "Bisoprolol 1.25 mg PO OD"

Instance: renee-med-5
InstanceOf: Medication
Usage: #inline
* code.coding[+] = $spor-man#himss-5 "Bisoprolol 1.25 mg" 

* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#TU2UN5CG9C "INFLUENZA A VIRUS A/WISCONSIN/588/2019 (H1N1) WHOLE"
* ingredient.itemCodeableConcept.text = "INFLUENZA A VIRUS A/WISCONSIN/588/2019 (H1N1) WHOLE"
* ingredient.strength.numerator = 1.25 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"
