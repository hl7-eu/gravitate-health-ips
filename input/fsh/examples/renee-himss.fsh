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




*/



* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Renee-ips-1"
* type = #document
* timestamp = "2025-06-04T09:22:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/Renee-comp" // Composition
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


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-1" // Medication Statement 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = Renee-med-stat-1
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-2" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = Renee-med-stat-2
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-3" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = Renee-med-stat-3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/Renee-med-stat-4" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = Renee-med-stat-4



* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-1" 
* entry[=].resource = renee-med-1

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-2"
* entry[=].resource = renee-med-2

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-3" 
* entry[=].resource = renee-med-3

* entry[+].fullUrl = "https://myserver.org/Medication/renee-med-4" 
* entry[=].resource = renee-med-4



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

* section[=].entry[0] = Reference(Renee-med-stat-1) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
* section[=].entry[+] = Reference(Renee-med-stat-2) "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* section[=].entry[+] = Reference(Renee-med-stat-3) "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
* section[=].entry[+] = Reference(Renee-med-stat-4) "Carbamazepine  1 t TID"

// ====================================================== PATIENT ======================================================
Instance: Renee-patient
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
* identifier[=].value = "Renee-1"
* identifier[+].system = "keycloak-id"
* identifier[=].value = "xx"
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
* code = $sct#60573004 "Aortic valve stenosis (disorder)"
* code.text = "Aortic valve stenosis"
* subject = Reference(Renee-patient) "Renee Gravitate"

// --- Heart failure (disorder)
Instance: Renee-cond-2
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#84114007 "Heart failure (disorder)"
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
* medicationReference = Reference(renee-med-1) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Renee-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-2) "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: Renee-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-3) "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: Renee-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(renee-med-4) "Carbamazepine  1 t TID"
* subject = Reference(Renee-patient) "Renee Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


// ====================================================== MEDICATIONS ======================================================
// "bictegravir/emtricitabine/tenofovir alafenamide"
Instance: renee-med-1
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
/*Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2g8i1
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
*/ //missing epI

// "Calcium carbonate 1000 mg + Vitamin D3 880 UI"
Instance: renee-med-2
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

//"St. John's Wort (HIPÉRICO ARKOPHARMA cápsulas duras, Hypericum perforatum L.)"

Instance: renee-med-3
InstanceOf: Medication
Usage: #inline
* code.coding[0] = https://spor.ema.europa.eu/pmswi#79963 "HIPÉRICO ARKOPHARMA cápsulas duras" 
* code.coding[+] = $phpid#0xbb82cd10ab2add752b2b9224931099j1 "St. John's Wort (HIPÉRICO ARKOPHARMA) hard tablet" //not real PhPID
* code.coding[+] = $atc#A03FA02 "HYPERICUM PERFORATUM WHOLE" // ATC NOT FOUND
* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#XK4IUX8MNB "HYPERICUM PERFORATUM WHOLE"
* ingredient.itemCodeableConcept.text = "HYPERICUM PERFORATUM WHOLE"
* ingredient.strength.numerator = 175 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


//"Flucelvax"
Instance: renee-med-4
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/18/1326/001 "Flucelvax" 
* code.coding[+] = $phpid#0xbb82cd10ab2add752b2b9224931000k2 "Flucelvax" //not real PhPID
* code.coding[+] = $atc#A03ku92 "Flucelvax" // ATC NOT FOUND
* form = $edqm#10219999 "suspension for injection in pre-filled syringe" //not real EDQM code
* form.text = "suspension for injection in pre-filled syringe"
* ingredient.itemCodeableConcept = $unii#TU2UN5CG9C "INFLUENZA A VIRUS A/WISCONSIN/588/2019 (H1N1) WHOLE"
* ingredient.itemCodeableConcept.text = "INFLUENZA A VIRUS A/WISCONSIN/588/2019 (H1N1) WHOLE"
* ingredient.strength.numerator = 15 'mcg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "suspension for injection in pre-filled syringe"
