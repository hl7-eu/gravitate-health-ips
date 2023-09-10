//Person B has been prescribed Humalog and Furosemide which are contraindicated since sulfonamides can cause hypoglycaemia

Instance: gravitate-ips-2
InstanceOf: Bundle-uv-ips
Title:   "IPS Example 2"
Usage: #example
Description: "Example of International Patient Summary for Gravitate"

//https://github.com/hl7-eu/gravitate-health-ips/blob/master/input/fsh/examples/maria-ips.fsh
* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "ips-2"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "https://myserver.org/Composition/2fa5b223-ebce-4f39-9c66-5dc014f73573" // 0 - Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f73573
* entry[+].fullUrl = "https://myserver.org/Patient/c154158f-6a43-4ab7-8443-e7f4bf915dd3" // 1- Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd3
* entry[+].fullUrl = "https://myserver.org/Practitioner/1ece89c5-fda3-4db9-ace6-decbe6c603d3" // 2- Practitioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d3

// added GC
* entry[+].fullUrl = "https://myserver.org/AllergyIntolerance/0dff4474-fa08-4f45-8260-dbb23094bf07" // 3- Allergy
* entry[=].resource = 0dff4474-fa08-4f45-8260-dbb23094bf07
//=======


* entry[+].fullUrl = "https://myserver.org/Condition/bcc79261-142c-48ec-b032-f3f9af49ec53" // 4- Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec53
* entry[+].fullUrl = "https://myserver.org/Condition/a4a9d90a-d1b0-4d60-82f0-c52343dc6253" // 5- Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6253
* entry[+].fullUrl = "https://myserver.org/Condition/f06b7cf8-c15c-4288-a0f9-45a1026e5133" // 6- Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5133
* entry[+].fullUrl = "https://myserver.org/Condition/f06b7cf8-c15c-4288-a0f9-45a1026e6788" // 7- Condition 4
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e6788


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/29074ca4-efcb-4ff4-8446-feed2399a893" // 8- Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a893
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f6cb1218-f81c-4338-80d8-3c10910f78f3" // 9- Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78f3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f26084c9-b1c8-46d9-acb2-1d400ade87b3" // 10 -Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87b3
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/f26084c9-b1c8-46d9-acb2-1d400ade94gy" // 11 - Medication Statement 4
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade94gy


* entry[+].fullUrl = "https://myserver.org/Medication/b50ae644-e0b7-4007-809f-26f493cbe363" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe363
* entry[+].fullUrl = "https://myserver.org/Medication/de131e15-ed13-4b31-b38c-3204a84d99c3" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c3
* entry[+].fullUrl = "https://myserver.org/Medication/9ac3356c-4ea4-4814-84c3-235484f2ef13" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef13
* entry[+].fullUrl = "https://myserver.org/Medication/9ac3356c-4ea4-4814-84c3-235484f2jk90" // Medication 4
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2jk90

// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f73573
InstanceOf: Composition-uv-ips
Title:   "[Composition] IPS Example 2 IPS"
Usage: #inline

* id = "ips-example-2"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d3) "Dr. Number2"
* title = "Patient Summary (IPS2)"
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
		<li>Lipcut	Simvastatin	5 mg	tablet</li>
	</ul>
    	<ul>
		<li>Enbrel Etanercept 25 mg powder for solution for injection</li>
	</ul>
    	<ul>
		<li>Tegretol Carbamazepine	200 mg	tablets</li>
	</ul>
</div>"
* section[sectionMedications].entry[0] = Reference(29074ca4-efcb-4ff4-8446-feed2399a893) "Ogivri	trastuzumab 150 mg	powder for concentrate for solution for infusion"
* section[sectionMedications].entry[+] = Reference(f6cb1218-f81c-4338-80d8-3c10910f78f3) "Lipcut	Simvastatin	5 mg tablet"
* section[sectionMedications].entry[+] = Reference(f26084c9-b1c8-46d9-acb2-1d400ade87b3) "Enbrel Etanercept 25 mg powder for solution for injection"
* section[sectionMedications].entry[+] = Reference(f26084c9-b1c8-46d9-acb2-1d400ade94gy) "Tegretol Carbamazepine	200 mg	tablets"


// ======== Allergy
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>No infos about Allergies</li>
	</ul>
</div>"
* section[sectionAllergies].entry = Reference(0dff4474-fa08-4f45-8260-dbb23094bf07) "No infos about Allergies"


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
* section[sectionProblems].entry[0] = Reference(bcc79261-142c-48ec-b032-f3f9af49ec53) "Malignant neoplasm of breast (disorder)"
* section[sectionProblems].entry[+] = Reference(f06b7cf8-c15c-4288-a0f9-45a1026e5133) "Hypercholesterolemia" // "Essential (primary) hypertension"
* section[sectionProblems].entry[+] = Reference(a4a9d90a-d1b0-4d60-82f0-c52343dc6253) "Rheumatoid arthritis"
* section[sectionProblems].entry[+] = Reference(f06b7cf8-c15c-4288-a0f9-45a1026e6788) "Epilepsy (disorder)"


// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd3
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO "Norway"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "ips-2"
* active = true
* name.family = "Gravitate"
* name.given = "IPS-2"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d3
InstanceOf: Practitioner
Usage: #inline

* name.family = "2"
* name.given = "IPS"
* name.prefix = "Dr."


// == ALLERGIES ===

Instance: 0dff4474-fa08-4f45-8260-dbb23094bf07
InstanceOf: AllergyIntolerance-uv-ips
Title:   "[AllergyIntolerance] IPS Example 2 IPS"
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $absent-unknown-uv-ips#no-allergy-info
/* * code = $sct#256259004 "Pollen"
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever" */
* patient = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"


// == CONDITIONS ===
// Malignant neoplasm of breast /trastuzumab
Instance: bcc79261-142c-48ec-b032-f3f9af49ec53
InstanceOf: Condition-uv-ips
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* code.text = "Malignant neoplasm of breast"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d3) "Dr. IPS2"

// ---   Rheumatoid arthritis (disorder) //enbrel

Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6253
InstanceOf: Condition-uv-ips
Usage: #inline

* clinicalStatus = $condition-clinical#active
* code = $sct#69896004 "Rheumatoid arthritis (disorder)"
* code.text = "Rheumatoid arthritis"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* onsetDateTime = "2015"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d3) "Dr. IPS2"



Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5133
InstanceOf: Condition-uv-ips
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#13644009 "Hypercholesterolemia (disorder)"
* code.text = "Hypercholesterolemia"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* onsetDateTime = "1993"

Instance: f06b7cf8-c15c-4288-a0f9-45a1026e6788
InstanceOf: Condition-uv-ips
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#84757009 "Epilepsy (disorder)"
* code.text = "Epilepsy"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* onsetDateTime = "1993"


// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a893
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2015"
// * effectivePeriod.start = "2015"
* medicationReference = Reference(b50ae644-e0b7-4007-809f-26f493cbe363) "trastuzumab"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* dosage.route = $edqm#20045000 "Intravenous use"

Instance: f6cb1218-f81c-4338-80d8-3c10910f78f3
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2020"
* medicationReference = Reference(de131e15-ed13-4b31-b38c-3204a84d99c3) "simvastatin"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* dosage.route = $edqm#20053000 "Oral use"


Instance: f26084c9-b1c8-46d9-acb2-1d400ade87b3
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2023"
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2ef13) "enbrel"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* dosage.route = $edqm#20066000	"Subcutaneous use"

Instance: f26084c9-b1c8-46d9-acb2-1d400ade94gy
InstanceOf: MedicationStatement-uv-ips
Usage: #inline
* status = #active
// to be converted in period.start
* effectiveDateTime = "2020"
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2jk90) "carbamazepine"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "IPS-2"
* dosage.route = $edqm#20053000 "Oral use"


// ====== MEDICATIONS ===================================
Instance: b50ae644-e0b7-4007-809f-26f493cbe363
InstanceOf: Medication-uv-ips
Usage: #inline
//* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[0] =  http://example.org/mpid/no#4249
//* code.coding[+] = $phpid#7532F47F36A3585D1F348BBDDA057862 "Ogivri	trastuzumab 150 mg	powder for concentrate for solution for infusion"
//* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#50042000 "Powder and solvent for concentrate for solution for infusion"
* ingredient.itemCodeableConcept = $unii#P188ANX8CK "trastuzumab"
* ingredient.itemCodeableConcept.text = "trastuzumab"
	


Instance: de131e15-ed13-4b31-b38c-3204a84d99c3
InstanceOf: Medication-uv-ips
Usage: #inline
//* code.coding[0] = $spor-man#EMEA/H/C/000142 "Karvea"
* code.coding[+] = $phpid#F92168108C432D63DACDD70444176BB3 "Lipcut	Simvastatin	20 mg	tablet"
//* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#AGG2FN16EV "SIMVASTATIN"
* ingredient.itemCodeableConcept.text = "SIMVASTATIN"



Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef13
InstanceOf: Medication-uv-ips
Usage: #inline
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Enbrel Etanercept	25 mg powder for solution for injection"
* form = $edqm#50041500 "Powder and solution for solution for injection"
* form.text = "Powder and solution for solution for injection"
* ingredient.itemCodeableConcept = $unii#OP401G7OJC "ETANERCEPT (ENBREL)"
* ingredient.itemCodeableConcept.text = "Enbrel Etanercept	25 mg"


Instance: 9ac3356c-4ea4-4814-84c3-235484f2jk90
InstanceOf: Medication-uv-ips
Usage: #inline
* code.coding[+] = $phpid#5C62673C79E096D37914D32A45AA8F4D "Tegretol	Carbamazepine	200 mg	tablets" //level 3
* code.coding[+] = $phpid#FB9808F4FED210183F412F9998622287 "Tegretol	Carbamazepine	200 mg	tablets" //level 4

* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#33CM23913M "CARBAMAZEPINE"
* ingredient.itemCodeableConcept.text = "CARBAMAZEPINE"

	