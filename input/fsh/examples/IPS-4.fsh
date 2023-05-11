Instance: gravitate-ips-4
InstanceOf: Bundle-uv-ips
Title:   "IPS Example 4"
Usage: #example
Description: "Example of International Patient Summary for Gravitate"

//https://github.com/hl7-eu/gravitate-health-ips/blob/master/input/fsh/examples/maria-ips.fsh
* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "ips-4"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/2fa5b223-ebce-4f39-9c66-5dc014f73579" // Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f73579
* entry[+].fullUrl = "https://myserver.org/Patient/c154158f-6a43-4ab7-8443-e7f4bf915dd2" // Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd2
* entry[+].fullUrl = "https://myserver.org/Practitioner/1ece89c5-fda3-4db9-ace6-decbe6c603d2" // Practictioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d2
* entry[+].fullUrl = "https://myserver.org/AllergyIntolerance/1dff4474-fa08-4f45-8260-dbb23094bf02" // Allergy
* entry[=].resource = 1dff4474-fa08-4f45-8260-dbb23094bf02
* entry[+].fullUrl = "https://myserver.org/AllergyIntolerance/9d18cddb-8e58-4fbb-82ec-09cc561ac802" // Allergy
* entry[=].resource = 9d18cddb-8e58-4fbb-82ec-09cc561ac802

* entry[+].fullUrl = "https://myserver.org/Condition/bcc79261-142c-48ec-b032-f3f9af49ec52" // Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec52
* entry[+].fullUrl = "https://myserver.org/Condition/a4a9d90a-d1b0-4d60-82f0-c52343dc6252" // Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6252
* entry[+].fullUrl = "https://myserver.org/Condition/f06b7cf8-c15c-4288-a0f9-45a1026e5132" // Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5132

* entry[+].fullUrl = "https://myserver.org/MedicationStatement/29074ca4-efcb-4ff4-8446-feed2399a892" // Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a892
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f6cb1218-f81c-4338-80d8-3c10910f78f2" // Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78f2
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f26084c9-b1c8-46d9-acb2-1d400ade87b2" // Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87b2

* entry[+].fullUrl = "https://myserver.org/Medication/b50ae644-e0b7-4007-809f-26f493cbe362" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe362
* entry[+].fullUrl = "https://myserver.org/Medication/de131e15-ed13-4b31-b38c-3204a84d99c2" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c2
* entry[+].fullUrl = "https://myserver.org/Medication/9ac3356c-4ea4-4814-84c3-235484f2ef12" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef12


* entry[+].fullUrl = "https://myserver.org/Observation/e06e43a1-38d4-468f-8c35-f7f12da91062" // Pregnancy (Observation)
* entry[=].resource = e06e43a1-38d4-468f-8c35-f7f12da91062

* entry[+].fullUrl = "https://myserver.org/Observation/bw" // BW (Observation)
* entry[=].resource = bw


* entry[+].fullUrl = "https://myserver.org/Observation/bh" // PregBHnancy (Observation)
* entry[=].resource = bh


* entry[+].fullUrl = "https://myserver.org/Observation/bp" // BP (Observation)
* entry[=].resource = bp

* entry[+].fullUrl = "https://myserver.org/Observation/glucose" // Glucose (Observation)
* entry[=].resource = glucose




// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f73579
InstanceOf: Composition
Title:   "IPS Example 4 Composition"
Usage: #inline

* id = "ips-example-4"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "Example 4 Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"
* title = "Patient Summary (IPS Example 4 Gravitate)"
* confidentiality = #N
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].entry = Reference(1dff4474-fa08-4f45-8260-dbb23094bf02) "Hay fever (pollen)"
* section[=].entry[+] = Reference(9d18cddb-8e58-4fbb-82ec-09cc561ac802) "Lactose Intolerance"



// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].entry[0] = Reference(bcc79261-142c-48ec-b032-f3f9af49ec52) "Psoriasis"
* section[=].entry[+] = Reference(f06b7cf8-c15c-4288-a0f9-45a1026e5132) "Hypertension" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(a4a9d90a-d1b0-4d60-82f0-c52343dc6252) "Congestive heart failure"
// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].entry[0] = Reference(29074ca4-efcb-4ff4-8446-feed2399a892) "Remsima 100 mg powder for concentrate for solution for infusion"
* section[=].entry[+] = Reference(f6cb1218-f81c-4338-80d8-3c10910f78f2) "Irbesartan 75 mg Tablet"
* section[=].entry[+] = Reference(f26084c9-b1c8-46d9-acb2-1d400ade87b2) "Pentasa Slow Release Tablets 1g"

// ======== Vital Signs
* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital Signs"
* section[=].entry[+] = Reference(bw) "Body weight"
* section[=].entry[+] = Reference(bh) "Body height"
* section[=].entry[+] = Reference(bp) "Blood pressure"


// ======== Results
* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[=].entry[+] = Reference(glucose) "glucose"


// ======== pregnancy
* section[+].title = "Pregnancy History"
* section[=].code = $loinc#10162-6 "Pregnancies Hx"
* section[=].entry[0] = Reference(e06e43a1-38d4-468f-8c35-f7f12da91062) "Pregrancy Status"


// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd2
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO "Norway"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "ips-4"
* active = true
* name.family = "Gravitate"
* name.given = "IPS 4 example"
* gender = #female
* birthDate = "1989-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d2
InstanceOf: Practitioner
Usage: #inline
* name.family = "Karlsson"
* name.given = "Anne"
* name.prefix = "Dr."





// == ALLERGIES ===
Instance: 1dff4474-fa08-4f45-8260-dbb23094bf02
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#256259004 "Pollen"
* type = #allergy
* category = #environment
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever"
* patient = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"


Instance: 9d18cddb-8e58-4fbb-82ec-09cc561ac802
InstanceOf: AllergyIntolerance
Usage: #inline

* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #intolerance
* category = #food
* code = http://snomed.info/sct#782415009 "Intolerance to lactose"
* patient = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* onsetAge = 1 'a' "year"
* recordedDate = "2009-10-09"
* reaction.substance = http://snomed.info/sct#47703008 "lactose"
* reaction.manifestation[0] = http://snomed.info/sct#21522001 "Abdominal pain"
* reaction.manifestation[+] = http://snomed.info/sct#116289008 "Abdominal bloating"
* reaction.manifestation[+] = http://snomed.info/sct#62315008 "Diarrhea"



// == CONDITIONS ===
Instance: bcc79261-142c-48ec-b032-f3f9af49ec52
InstanceOf: Condition
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"




// --- "Congestive heart failure"
Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6252
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"
// ------- "Hypertension"
Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5132
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* onsetDateTime = "1993"


// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a892
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(b50ae644-e0b7-4007-809f-26f493cbe362) "Remsima 100 mg powder for concentrate for solution for infusion"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* dosage.route = $edqm#20045000 "Intravenous use"


Instance: f6cb1218-f81c-4338-80d8-3c10910f78f2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(de131e15-ed13-4b31-b38c-3204a84d99c2) "Karvea 75 mg Tablet"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* dosage.route = $edqm#20053000 "Oral use"


Instance: f26084c9-b1c8-46d9-acb2-1d400ade87b2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2ef12) "Humalog 100 U/ml 5 pre-filled pen"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* dosage.route = $edqm#20066000 "Subcutaneous use"



// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe362
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/13/853/001 "Remsima 100 mg powder for concentrate for solution for infusion"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82718 "Infliximab 100 mg powder for concentrate for solution for infusion"
* form = $edqm#50049250 "Powder for concentrate for solution for injection/infusion"
* ingredient.itemCodeableConcept = $unii#B72HH48FLU "INFLIXIMAB"
* ingredient.itemCodeableConcept.text = "INFLIXIMAB"
* ingredient.strength.numerator.value = 100
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Vial"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{vial}


Instance: de131e15-ed13-4b31-b38c-3204a84d99c2
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/97/049/001 "Karvea 75 mg/ 1 tablet, Tablet"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82719 "Irbesartan, 75 mg/ 1 tablet, Tablet"
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


Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef12
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/96/007/035 "Humalog Mix50 KwikPen 100 U/ml 5 pre-filled pen"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82717 "Insulin Lispro 100 U/ml 5 pre-filled pen"
* form = $edqm#11202000 "Suspension for injection"
* form.text = "Suspension for injection"
* ingredient.itemCodeableConcept = $unii#GFX7QIS1II "Insulin Lispro"
* ingredient.itemCodeableConcept.text = "Insulin Lispro"
* ingredient.strength.numerator.value = 100
* ingredient.strength.numerator.unit = "U"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #U
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #ml





// --- "Pregnancy"
Instance: e06e43a1-38d4-468f-8c35-f7f12da91062
InstanceOf: Observation
Usage: #inline
* status = #final
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* effectiveDateTime = "2020-01-10"
* valueCodeableConcept = http://loinc.org#LA15173-0 "Pregnant"


// ======== Vital Signs =====
Instance: bw
InstanceOf: Observation
Usage: #inline

* status = #final

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code =  http://loinc.org#29463-7 "Body weight"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"

* effectiveDateTime = "2009-10-09"

* valueQuantity = 70 'kg'

Instance: bh
InstanceOf: Observation
Usage: #inline

* status = #final

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code =  http://loinc.org#8302-2 "Body height"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"

* effectiveDateTime = "2009-10-09"

* valueQuantity = 170 'cm'

Instance: bp
InstanceOf: Observation
Usage: #inline

* status = #final

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code =  http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"

* effectiveDateTime = "2009-10-09"

* component[+].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]'

* component[+].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]'


// ======== Laboratory =====
Instance: glucose
InstanceOf: Observation
Usage: #inline

* status = #final

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code =  http://loinc.org#15074-8 "Glucose [Moles/volume] in Blood"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"

* effectiveDateTime = "2013-04-02T09:30:10+01:00"

* valueQuantity = 6.3 'mmol/L' "mmol/l"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* referenceRange.low = 3.1 'mmol/L' "mmol/l"
* referenceRange.high = 6.2 'mmol/L' "mmol/l"