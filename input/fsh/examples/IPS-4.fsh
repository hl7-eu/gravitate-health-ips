//Person C has a pregnancy and has been prescribed Diplexil (Valproate) which is contraindicated due to harm to fetus


Instance: gravitate-ips-4
InstanceOf: Bundle
Title:   "IPS Example 4"
Usage: #example
Description: "Example of International Patient Summary for Gravitate"

//https://github.com/hl7-eu/gravitate-health-ips/blob/master/input/fsh/examples/maria-ips.fsh
* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "ips-4"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "urn:uuid:2fa5b223-ebce-4f39-9c66-5dc014f73579" // Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f73579
* entry[+].fullUrl = "urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2" // Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd2
* entry[+].fullUrl = "urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d2" // Practictioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d2
* entry[+].fullUrl = "urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf02" // Allergy
* entry[=].resource = 1dff4474-fa08-4f45-8260-dbb23094bf02

* entry[+].fullUrl = "urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec52" // Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec52
* entry[+].fullUrl = "urn:uuid:a4a9d90a-d1b0-4d60-82f0-c52343dc6252" // Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6252
* entry[+].fullUrl = "urn:uuid:f06b7cf8-c15c-4288-a0f9-45a1026e5132" // Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5132

* entry[+].fullUrl = "urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a892" // Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a892
* entry[+].fullUrl = "urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78f2" // Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78f2
* entry[+].fullUrl = "urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87b2" // Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87b2

* entry[+].fullUrl = "urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe362" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe362
* entry[+].fullUrl = "urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c2" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c2
* entry[+].fullUrl = "urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef12" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef12
* entry[+].fullUrl = "urn:uuid:5d129355-4b20-40d8-841f-7f93acbc3e62" // Medication 4
* entry[=].resource = 5d129355-4b20-40d8-841f-7f93acbc3e62

* entry[+].fullUrl = "urn:uuid:e06e43a1-38d4-468f-8c35-f7f12da91062" // Pregnancy 
* entry[=].resource = e06e43a1-38d4-468f-8c35-f7f12da91062
// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f73579
InstanceOf: Composition
Title:   "IPS Example 4 Composition"
Usage: #inline

* id = "ips-example-4"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "Example 1 Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"
* title = "Patient Summary (IPS Example 4 Gravitate)"
* confidentiality = #N
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].entry = Reference(urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf02) "Hay fever (pollen)"
// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].entry[0] = Reference(urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec52) "Psoriasis"
* section[=].entry[+] = Reference(urn:uuid:f06b7cf8-c15c-4288-a0f9-45a1026e5132) "Hypertension" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(urn:uuid:a4a9d90a-d1b0-4d60-82f0-c52343dc6252) "Congestive heart failure"
// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].entry[0] = Reference(urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a892) "Dimethyl fumarate 30 mg Gastro-resistant tablet"
* section[=].entry[+] = Reference(urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78f2) "Irbesartan 75 mg Tablet"
* section[=].entry[+] = Reference(urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87b2) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* section[=].entry[+] = Reference(urn:uuid:5d129355-4b20-40d8-841f-7f93acbc3e62) "valproic acid"


// ======== pregnancy
* section[+].title = "Pregnancy History"
* section[=].code = $loinc#10162-6 "Pregnancies Hx"
* section[=].entry[0] = Reference(urn:uuid:e06e43a1-38d4-468f-8c35-f7f12da91062) "Pregrancy Status"

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
* patient = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"


Instance: 9d18cddb-8e58-4fbb-82ec-09cc561ac802
InstanceOf: AllergyIntolerance
Usage: #inline

* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #intolerance
* category = #food
* code = http://snomed.info/sct#782415009 "Intolerance to lactose"
* patient = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* onsetAge = 1 'a' "year"
* recordedDate = "2009-10-09"
* reaction.substance = http://snomed.info/sct#47703008 "lactose"
* reaction.manifestation[0] = http://snomed.info/sct#21522001 "Abdominal pain"
* reaction.manifestation[+] = http://snomed.info/sct#116289008 "Abdominal bloating"
* reaction.manifestation[+] = http://snomed.info/sct#62315008 "Diarrhoea"



// == CONDITIONS ===
Instance: bcc79261-142c-48ec-b032-f3f9af49ec52
InstanceOf: Condition
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"




// --- "Congestive heart failure"
Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6252
InstanceOf: Condition
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"
// ------- "Hypertension"
Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5132
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* onsetDateTime = "1993"


// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a892
InstanceOf: MedicationStatement
Usage: #inline

* status = #active
* medicationReference = Reference(urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe362) "Dimethyl fumarate 30 mg Tablet"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* dosage.route = $edqm#20053000 "Oral use"



Instance: f6cb1218-f81c-4338-80d8-3c10910f78f2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c2) "Irbesartan 75 mg Tablet"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: f26084c9-b1c8-46d9-acb2-1d400ade87b2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef12) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "IPS 4 Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"



// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe362
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[+] = $phpid#0x9982CA8A825D4561506CE808982E3B9D "dimethyl fumarate, 30 mg/ 1 tablet, Gastro-resistant tablet"
* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#10225000 "Gastro-resistant tablet"
* ingredient.itemCodeableConcept = $unii#FO2303MNI2 "dimethyl fumarate"
* ingredient.itemCodeableConcept.text = "dimethyl fumarate"
* ingredient.strength.numerator.value = 30
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}


Instance: de131e15-ed13-4b31-b38c-3204a84d99c2
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EMEA/H/C/000142 "Karvea"
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


Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef12
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#R01AA05 "oxymetazoline"
// * form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator.value = 0.05
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #ml

Instance: 5d129355-4b20-40d8-841f-7f93acbc3e62
InstanceOf: Medication
Usage: #inline
//* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
//* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#N03AG01 "valproic acid"
// * form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator.value = 0.05
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
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
