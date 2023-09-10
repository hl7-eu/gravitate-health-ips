//Person B has been prescribed Humalog and Furosemide which are contraindicated since sulfonamides can cause hypoglycaemia

Instance: gravitate-ips-jp
InstanceOf: Bundle-uv-ips
Title:   "IPS Example JP"
Usage: #example
Description: "Example of International Patient Summary for Gravitate"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "ips-jp"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/2fa5b223-ebce-4f39-9c66-5dc014f7359c" // 0 - Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f7359c
* entry[+].fullUrl = "https://myserver.org/Patient/c154158f-6a43-4ab7-8443-e7f4bf915dd9c" // 1- Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd9c
* entry[+].fullUrl = "https://myserver.org/Practitioner/1ece89c5-fda3-4db9-ace6-decbe6c603d9c" // 2- Practitioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d9c

// added GC
* entry[+].fullUrl = "https://myserver.org/AllergyIntolerance/0dff4474-fa08-4f45-8260-dbb23094bf09c" // 3- Allergy
* entry[=].resource = 0dff4474-fa08-4f45-8260-dbb23094bf09c
//=======


* entry[+].fullUrl = "https://myserver.org/Condition/bcc79261-142c-48ec-b032-f3f9af49ec59c" // 4- Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec59c
* entry[+].fullUrl = "https://myserver.org/Condition/a4a9d90a-d1b0-4d60-82f0-c52343dc6259c" // 5- Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6259c
* entry[+].fullUrl = "https://myserver.org/Condition/f06b7cf8-c15c-4288-a0f9-45a1026e5139c" // 6- Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5139c
* entry[+].fullUrl = "https://myserver.org/Condition/f06b7cf8-c15c-4288-a0f9-45a1026e6789c" // 7- Condition 4
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e6789c


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/29074ca4-efcb-4ff4-8446-feed2399a899c" // 8- Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a899c
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f6cb1218-f81c-4338-80d8-3c10910f78f9c" // 9- Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78f9c
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f26084c9-b1c8-46d9-acb2-1d400ade87b9c" // 10 -Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87b9c
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f26084c9-b1c8-46d9-acb2-1d400ade94g9c" // 11 - Medication Statement 4
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade94g9c


* entry[+].fullUrl = "https://myserver.org/Medication/b50ae644-e0b7-4007-809f-26f493cbe369c" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe369c
* entry[+].fullUrl = "https://myserver.org/Medication/de131e15-ed13-4b31-b38c-3204a84d99c9c" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c9c
* entry[+].fullUrl = "https://myserver.org/Medication/9ac3356c-4ea4-4814-84c3-235484f2ef19c" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef19c
* entry[+].fullUrl = "https://myserver.org/Medication/9ac3356c-4ea4-4814-84c3-235484f2jk99c" // Medication 4
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2jk99c

// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f7359c
InstanceOf: Composition-uv-ips
Title:   "[Composition] IPS Example JP IPS"
Usage: #inline

* id = "ips-example-2"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d9c) "Dr. JP"
* title = "Patient Summary (IPSJP)"
* confidentiality = #N

// Sections

// ======== MEDICATIONS
* section[sectionMedications].title = "Medication Summary"
* section[sectionMedications].code = $loinc#10160-0 "Hx of Medication use"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Ogivri	trastuzumab 150 mg	powder for concentrate for solution for infusion</li>
	</ul>
    	<ul>
		<li>Lipcut	Simvastatin	20 mg	tablet</li>
	</ul>
    	<ul>
		<li>Enbrel Etanercept 25 mg powder for solution for injection</li>
	</ul>
    	<ul>
		<li>Tegretol Carbamazepine	200 mg	tablets</li>
	</ul>
</div>"
* section[sectionMedications].entry[0] = Reference(29074ca4-efcb-4ff4-8446-feed2399a899c) "Ogivri	trastuzumab 150 mg	powder for concentrate for solution for infusion"
* section[sectionMedications].entry[+] = Reference(f6cb1218-f81c-4338-80d8-3c10910f78f9c) "Lipcut	Simvastatin	20 mg tablet"
* section[sectionMedications].entry[+] = Reference(f26084c9-b1c8-46d9-acb2-1d400ade87b9c) "Enbrel Etanercept 25 mg powder for solution for injection"
* section[sectionMedications].entry[+] = Reference(f26084c9-b1c8-46d9-acb2-1d400ade94g9c) "Tegretol Carbamazepine	200 mg	tablets"


// ======== Allergy
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>No infos about Allergies</li>
	</ul>
</div>"
* section[sectionAllergies].entry = Reference(0dff4474-fa08-4f45-8260-dbb23094bf09c) "No infos about Allergies"


// ======== PROBLEMS
* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Malignant neoplasm of breast (disorder)</li>
	</ul>
    	<ul>
		<li>Hypercholesterolemia</li>
	</ul>
    	<ul>
		<li>Rheumatoid arthritis</li>
	</ul>
    	<ul>
		<li>Epilepsy</li>
	</ul>
</div>"
* section[sectionProblems].entry[0] = Reference(bcc79261-142c-48ec-b032-f3f9af49ec59c) "Malignant neoplasm of breast (disorder)"
* section[sectionProblems].entry[+] = Reference(f06b7cf8-c15c-4288-a0f9-45a1026e5139c) "Hypercholesterolemia" // "Essential (primary) hypertension"
* section[sectionProblems].entry[+] = Reference(a4a9d90a-d1b0-4d60-82f0-c52343dc6259c) "Rheumatoid arthritis"
* section[sectionProblems].entry[+] = Reference(f06b7cf8-c15c-4288-a0f9-45a1026e6789c) "Epilepsy (disorder)"


// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd9c
InstanceOf: Patient
Usage: #inline

* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "ips-jp"
* active = true
* name.family = "Gravitate"
* name.given = "IPS-JP"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d9c
InstanceOf: Practitioner
Usage: #inline

* name.family = "JP"
* name.given = "IPS"
* name.prefix = "Dr."


// == ALLERGIES ===

Instance: 0dff4474-fa08-4f45-8260-dbb23094bf09c
InstanceOf: AllergyIntolerance-uv-ips
Title:   "[AllergyIntolerance] IPS Example JP IPS"
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $absent-unknown-uv-ips#no-allergy-info
/* * code = $sct#256259004 "Pollen"
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever" */
* patient = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"


// == CONDITIONS ===
// Malignant neoplasm of breast /trastuzumab
Instance: bcc79261-142c-48ec-b032-f3f9af49ec59c
InstanceOf: Condition-uv-ips
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* code.text = "Malignant neoplasm of breast"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d9c) "Dr. IPS-JP"

// ---   Rheumatoid arthritis (disorder) //enbrel

Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6259c
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#69896004 "Rheumatoid arthritis (disorder)"
* code.text = "Rheumatoid arthritis"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* onsetDateTime = "2015"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d9c) "Dr. IPS-JP"



Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5139c
InstanceOf: Condition-uv-ips
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#13644009 "Hypercholesterolemia (disorder)"
* code.text = "Hypercholesterolemia"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* onsetDateTime = "1993"

Instance: f06b7cf8-c15c-4288-a0f9-45a1026e6789c
InstanceOf: Condition-uv-ips
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#84757009 "Epilepsy (disorder)"
* code.text = "Epilepsy"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* onsetDateTime = "1993"


// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a899c
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2015"
// * effectivePeriod.start = "2015"
* medicationReference = Reference(b50ae644-e0b7-4007-809f-26f493cbe369c) "trastuzumab"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* dosage.route = $edqm#20045000 "Intravenous use"

Instance: f6cb1218-f81c-4338-80d8-3c10910f78f9c
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2020"
* medicationReference = Reference(de131e15-ed13-4b31-b38c-3204a84d99c9c) "simvastatin"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* dosage.route = $edqm#20053000 "Oral use"


Instance: f26084c9-b1c8-46d9-acb2-1d400ade87b9c
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2023"
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2ef19c) "enbrel"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* dosage.route = $edqm#20066000	"Subcutaneous use"

Instance: f26084c9-b1c8-46d9-acb2-1d400ade94g9c
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2020"
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2jk99c) "carbamazepine"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd9c) "IPS-JP"
* dosage.route = $edqm#20053000 "Oral use"


// ====== MEDICATIONS ===================================
Instance: b50ae644-e0b7-4007-809f-26f493cbe369c
InstanceOf: Medication-uv-ips
Usage: #inline
//* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[0] =  http://www.pmda.jp/#874291
//* code.coding[+] = $phpid#7532F47F36A3585D1F348BBDDA057862 "Ogivri	trastuzumab 150 mg	powder for concentrate for solution for infusion"
//* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#50042000 "Powder and solvent for concentrate for solution for infusion"
* ingredient.itemCodeableConcept = $unii#P188ANX8CK "trastuzumab"
* ingredient.itemCodeableConcept.text = "trastuzumab"
	


Instance: de131e15-ed13-4b31-b38c-3204a84d99c9c
InstanceOf: Medication-uv-ips
Usage: #inline
* code.coding[0] =  http://www.pmda.jp/#sim874291
* code.coding[+] = $phpid#F92168108C432D63DACDD70444176BB3 "Lipcut	Simvastatin	20 mg	tablet"
//* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#AGG2FN16EV "SIMVASTATIN"
* ingredient.itemCodeableConcept.text = "SIMVASTATIN"



Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef19c
InstanceOf: Medication-uv-ips
Usage: #inline
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Enbrel Etanercept	25 mg powder for solution for injection"
* form = $edqm#50041500 "Powder and solution for solution for injection"
* form.text = "Powder and solution for solution for injection"
* ingredient.itemCodeableConcept = $unii#OP401G7OJC "ETANERCEPT (ENBREL)"
* ingredient.itemCodeableConcept.text = "Enbrel Etanercept	25 mg"


Instance: 9ac3356c-4ea4-4814-84c3-235484f2jk99c
InstanceOf: Medication-uv-ips
Usage: #inline
* code.coding[+] = $phpid#5C62673C79E096D37914D32A45AA8F4D "Tegretol	Carbamazepine	200 mg	tablets" //level 3
* code.coding[+] = $phpid#FB9808F4FED210183F412F9998622287 "Tegretol	Carbamazepine	200 mg	tablets" //level 4

* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#33CM23913M "CARBAMAZEPINE"
* ingredient.itemCodeableConcept.text = "CARBAMAZEPINE"

	