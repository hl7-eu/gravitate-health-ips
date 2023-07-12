Instance: gravitate-Alicia
InstanceOf: Bundle-uv-ips
Title:   "Alicia Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Alicia Gravitate"
/*
Alicia
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


Medication & Therapies: 
Prescribed by doctor 
BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD
Calcium/Vit D   
Folic Acid + Cyanocobalamin + Iodur 1 t QD
Carbamazepine  1 t TID


Additional (non prescribed) 
Orlistat 1 cp TID
St. John’s Wort 2 cp BID
Collagen and magnesium supplements
+ Flu vaccine?? 


Frequency of routines (daily, weekly, monthly)
Medication: daily
Exercise: weekly
Hospital pharmacy: bimonthly
Dietician: monthly
Once a year: Internal Medicine specialist + analytic and Neurologist.

*/



* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "alicia-ips-1"
* type = #document
* timestamp = "2023-04-18T09:22:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/alicia-comp" // Composition
* entry[=].resource = alicia-comp
* entry[+].fullUrl = "https://myserver.org/Patient/alicia-patient" // Patient
* entry[=].resource = alicia-patient
* entry[+].fullUrl = "https://myserver.org/Practitioner/alicia-pract" // Practictioner
* entry[=].resource = alicia-pract

* entry[+].fullUrl = "https://myserver.org/Condition/alicia-cond-1" // Condition 2
* entry[=].resource = alicia-cond-1
* entry[+].fullUrl = "https://myserver.org/Condition/alicia-cond-2" // Condition 2
* entry[=].resource = alicia-cond-2
* entry[+].fullUrl = "https://myserver.org/Condition/alicia-cond-3" // Condition 2
* entry[=].resource = alicia-cond-3
* entry[+].fullUrl = "https://myserver.org/Condition/alicia-cond-4" // Condition 2
* entry[=].resource = alicia-cond-4


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-1" // Medication Statement 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = alicia-med-stat-1
//* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-2" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
//* entry[=].resource = alicia-med-stat-2
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-3" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = alicia-med-stat-3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-4" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = alicia-med-stat-4
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-5" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = alicia-med-stat-5
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-6" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = alicia-med-stat-6
//* entry[+].fullUrl = "https://myserver.org/MedicationStatement/alicia-med-stat-7" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
//* entry[=].resource = alicia-med-stat-7



* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda78367" 
* entry[=].resource = 6f4151e9-91f6-4f1e-adc3-fb94dda78367

* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda79261"
* entry[=].resource = 6f4151e9-91f6-4f1e-adc3-fb94dda79261

* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda7785h" 
* entry[=].resource = 6f4151e9-91f6-4f1e-adc3-fb94dda7785h

* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda78367" 
* entry[=].resource = 6f4151e9-91f6-4f1e-adc3-fb94dda78367

//* entry[+].fullUrl = "https://myserver.org/Medication/fdb5c97f-0a46-41ba-bc34-2efd2ef2g8i1" 
//* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2g8i1

* entry[+].fullUrl = "https://myserver.org/Medication/9d7be868-8264-4d94-ad04-ef04ecc92i99" 
* entry[=].resource = 9d7be868-8264-4d94-ad04-ef04ecc92i99

* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda78356" 
* entry[=].resource =  6f4151e9-91f6-4f1e-adc3-fb94dda78356

* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda78333" 
* entry[=].resource =   6f4151e9-91f6-4f1e-adc3-fb94dda78333

//* entry[+].fullUrl = "https://myserver.org/Medication/6f4151e9-91f6-4f1e-adc3-fb94dda77853" 
//* entry[=].resource =  6f4151e9-91f6-4f1e-adc3-fb94dda77853

// ====================================================== COMPOSITION ======================================================
Instance: alicia-comp
InstanceOf: Composition
Title:   "Alicia Gravitate's IPS Composition"
Usage: #inline
Description: "Example of International Patient Summary for Alicia Gravitate"
* id = "gravitate-Alicia"
* status = #final
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml"><b>Id:</b> gravitate-alicia<br/><b>status:</b> final<br/><b>Type:</b> Patient summary Document<br/><b>Subject:</b> alicia Gravitate<br/><b>Sections:</b> <br/><ul><li><b>Title:</b> Problem List<br/><b>Code:</b> Problem list Reported (11450-4) </li><br/><ul><li><b>Entry:</b> <a href="Condition-alicia-cond-1.html">HIV</a> </li><br/><li><b>Entry:</b> <a href="Condition-alicia-cond-2.html">Trigeminal neuralgia</a> </li><br/><li><b>Entry:</b> <a href="Condition-alicia-cond-3.html">Depression</a> </li><br/><li><b>Entry:</b> <a href="Condition-alicia-cond-4.html">Overweight</a> </li></ul><li><b>Title:</b> Medication Summary<br/><b>Code:</b> Hx of Medication use (10160-0) </li><br/><ul><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-1.html">BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-2.html">Calcium/Vit D</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-3.html">Folic Acid + Cyanocobalamin + Iodur 1 t QD</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-4.html">Carbamazepine  1 t TID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-5.html">Orlistat 1 cp TID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-6.html">St. John’s Wort 2 cp BID</a> </li><br/><li><b>Entry:</b> <a href="MedicationStatement-alicia-med-stat-7.html">Collagen and magnesium supplements</a> </li><br/></ul></ul></div>"""
* text.status = #generated
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(alicia-pract) "Dr. Walter Waltz"
* title = "Patient Summary (Alicia Gravitate)"
* confidentiality = #N

// ====================================================== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"

* section[=].entry[0] = Reference(alicia-cond-1) "Depression"
* section[=].entry[+] = Reference(alicia-cond-2) "HIV" 
* section[=].entry[+] = Reference(alicia-cond-3) "Trigeminal neuralgia" 
* section[=].entry[+] = Reference(alicia-cond-4) "Overweight" 

// ====================================================== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.div = "<div>Medication list Reported</div>"
* section[=].text.status = #additional

* section[=].entry[0] = Reference(alicia-med-stat-1) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
//* section[=].entry[+] = Reference(alicia-med-stat-2) "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* section[=].entry[+] = Reference(alicia-med-stat-3) "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
* section[=].entry[+] = Reference(alicia-med-stat-4) "Carbamazepine  1 t TID"
* section[=].entry[+] = Reference(alicia-med-stat-5) "Orlistat 1 cp TID"
* section[=].entry[+] = Reference(alicia-med-stat-6) "St. John’s Wort 2 cp BID"
//* section[=].entry[+] = Reference(alicia-med-stat-7) "Collagen and magnesium supplements"

// ====================================================== PATIENT ======================================================
Instance: alicia-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#ES "Spain"
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
* identifier[=].value = "alicia-1"
* active = true
* name.family = "Gravitate"
* name.given = "Alicia"
* gender = #female
* birthDate = "1998-10-05" 

// ====================================================== Practitioner =========================================================
Instance: alicia-pract
InstanceOf: Practitioner
Usage: #inline

* name.family = "Waltz"
* name.given = "Walter"
* name.prefix = "Dr."

// ====================================================== CONDITIONS ======================================================


// --- Depression
Instance: alicia-cond-1
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#35489007 "Depressive disorder (disorder)"
* code.text = "Depressive disorder (disorder)"
* subject = Reference(alicia-patient) "alicia Gravitate"

// --- HIV
Instance: alicia-cond-2
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#86406008 "Human immunodeficiency virus infection"
* code.text = "Human immunodeficiency virus infection"
* subject = Reference(alicia-patient) "alicia Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(alicia-pract) "Dr. Walter Waltz"

// --- Trigeminal neuralgia
Instance: alicia-cond-3
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#31681005 "Trigeminal neuralgia (disorder)"
* code.text = "Trigeminal neuralgia (disorder)"
* subject = Reference(alicia-patient) "alicia Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(alicia-pract) "Dr. Walter Waltz"

// --- Overweight
Instance: alicia-cond-4
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#238131007 "Overweight (finding)"
* code.text = "Overweight (finding)"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(alicia-pract) "Dr. Walter Waltz"

// ====================================================== MEDICATION STATEMENTS ======================================================
Instance: alicia-med-stat-1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(9d7be868-8264-4d94-ad04-ef04ecc92i99) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: alicia-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(fdb5c97f-0a46-41ba-bc34-2efd2ef2g8i1) "Folic Acid + Cyanocobalamin + Iodur 1 t QD"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: alicia-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(6f4151e9-91f6-4f1e-adc3-fb94dda7785h) "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: alicia-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(6f4151e9-91f6-4f1e-adc3-fb94dda78356) "Carbamazepine  1 t TID"
* subject = Reference(alicia-patient) "alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: alicia-med-stat-5
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(6f4151e9-91f6-4f1e-adc3-fb94dda78333) "Orlistat 1 cp TID"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: alicia-med-stat-6
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(6f4151e9-91f6-4f1e-adc3-fb94dda79261) "St. John’s Wort 2 cp BID"
* subject = Reference(alicia-patient) "Alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: alicia-med-stat-7
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(6f4151e9-91f6-4f1e-adc3-fb94dda77853) "Collagen and magnesium supplements"
* subject = Reference(alicia-patient) "alicia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

// ====================================================== MEDICATIONS ======================================================
// "bictegravir/emtricitabine/tenofovir alafenamide"
Instance: 9d7be868-8264-4d94-ad04-ef04ecc92i99
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
Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda7785h
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

Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda79261
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


//"Collagen and magnesium supplements"
/*
Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda77853
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#yyy "AQUILEA ARTICULACIONES COLAGENO Y MAGNESIO 375GR" 
//* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* form = $edqm#10201000 "Oral powder"
* form.text = "Oral powder"
* ingredient.itemCodeableConcept = $unii#I38ZP9992A "MAGNESIUM"
* ingredient.itemCodeableConcept.text = "MAGNESIUM"
* ingredient[+].itemCodeableConcept = $unii#S270N0TRQY "HYALURONIC ACID"
* ingredient[=].itemCodeableConcept.text = "HYALURONIC ACID"
* ingredient[+].itemCodeableConcept = $unii#PT3TGI7OIP "HUMAN TYPE I COLLAGEN"
* ingredient[=].itemCodeableConcept.text = "HUMAN TYPE I COLLAGEN"
*/ //missing epI

//"Flucelvax"
Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda78367
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

//"CarbamaZepine 200 mg tablets"
Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda78356
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#39.955 "Tegretol (Carbamazepine) 200 mg tablets" 
* code.coding[+] = $phpid#0x6e5dd079852edc5c3b8efce075c80a2e "Carbamazepine 200 mg tablets" //not real PhPID
* form = $edqm#10219000 "Tablet"
* form.text = "Tablet"
* ingredient.itemCodeableConcept = $unii#33CM23913M "CARBAMAZEPINE"
* ingredient.itemCodeableConcept.text = "CARBAMAZEPINE"
* ingredient.strength.numerator = 200 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"


//"Orlistat"
Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda78333
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/98/071/004 "Xenical (Orlistat) 60 mg capsule" 
* code.coding[+] = $phpid#0xc805ef896d1c2f5f17f84f34c909a9db "Xenical (Orlistat) 60 mg capsule" //not real PhPID
* form = $edqm#10210000 "Capsule, hard" 
* form.text = "Capsule, hard"
* ingredient.itemCodeableConcept = $unii#95M8R751W8 "ORLISTAT"
* ingredient.itemCodeableConcept.text = "ORLISTAT"
* ingredient.strength.numerator = 60 'mg'
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.code = #15054000
* ingredient.strength.denominator.system = $edqm
* ingredient.strength.denominator.unit = "Tablet"




