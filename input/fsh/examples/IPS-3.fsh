//Person C has a pregnancy and has been prescribed Diplexil (Valproate) which is contraindicated due to harm to fetus


Instance: gravitate-ips-3
InstanceOf: Bundle
Title:   "IPS Example 3"
Usage: #example
Description: "Example of International Patient Summary for Gravitate"

//https://github.com/hl7-eu/gravitate-health-ips/blob/master/input/fsh/examples/maria-ips.fsh
* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "ips-3"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "urn:uuid:2fa5b223-ebce-4f39-9c66-5dc014f73571" // Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f73571
* entry[+].fullUrl = "urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1" // Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd1
* entry[+].fullUrl = "urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d1" // Practictioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d1
* entry[+].fullUrl = "urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf01" // Allergy
* entry[=].resource = 1dff4474-fa08-4f45-8260-dbb23094bf01

* entry[+].fullUrl = "urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec51" // Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec51
* entry[+].fullUrl = "urn:uuid:a4a9d90a-d1b0-4d60-82f0-c52343dc6251" // Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6251
* entry[+].fullUrl = "urn:uuid:f06b7cf8-c15c-4288-a0f9-45a1026e5131" // Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5131

* entry[+].fullUrl = "urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a891" // Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a891
* entry[+].fullUrl = "urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78f1" // Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78f1
* entry[+].fullUrl = "urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87b1" // Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87b1

* entry[+].fullUrl = "urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe361" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe361
* entry[+].fullUrl = "urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c1" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c1
* entry[+].fullUrl = "urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef11" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef11
* entry[+].fullUrl = "urn:uuid:5d129355-4b20-40d8-841f-7f93acbc3e61" // Medication 4
* entry[=].resource = 5d129355-4b20-40d8-841f-7f93acbc3e61

* entry[+].fullUrl = "urn:uuid:e06e43a1-38d4-468f-8c35-f7f12da91061" // Pregnancy 
* entry[=].resource = e06e43a1-38d4-468f-8c35-f7f12da91061
// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f73571
InstanceOf: Composition
Usage: #inline
* id = "gravitate-ips-1"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Example 1 Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d1) "Dr. Anna Karlsson"
* title = "Patient Summary (Maria Gravitate)"
* confidentiality = #N
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Hay fever (pollen)</li>
	</ul>
</div>"
* section[=].entry = Reference(urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf01) "Hay fever (pollen)"
// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Psoriasis</li>
		<li>Hypertension</li>
		<li>Congestive heart failure</li>
	</ul>
</div>"
* section[=].entry[0] = Reference(urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec51) "Psoriasis"
* section[=].entry[+] = Reference(urn:uuid:f06b7cf8-c15c-4288-a0f9-45a1026e5131) "Hypertension" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(urn:uuid:a4a9d90a-d1b0-4d60-82f0-c52343dc6251) "Congestive heart failure"
// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<table>
		<thead>
			<tr>
				<th>Brand Name</th>
				<th>MAN</th>
				<th>Active Substance</th>
				<th>Common Name</th>
				<th>ATC</th>
				<th>Strength</th>
				<th>Dose Form</th>
				<th>RoA</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Skilarence</td>
				<td>EU/1/17/1201/001</td>
				<td>dimethyl fumarate (FO2303MNI2)</td>
				<td>dimethyl fumarate</td>
				<td>L04AX07</td>
				<td>30 mg</td>
				<td>Gastro-resistant tablet</td>
				<td>Oral use</td>
			</tr>
			<tr>
				<td>Karvea</td>
				<td>EMEA/H/C/000142</td>
				<td>irbesartan (J0E2756Z7N)</td>
				<td>irbesartan</td>
				<td>C09DA04</td>
				<td>75 mg</td>
				<td>Tablet</td>
				<td>Oral use</td>
			</tr>
			<tr>
				<td>Boots Decongestant 0.05% w/v Nasal spray</td>
				<td>PL 16028/0049</td>
				<td>oxymetazoline hydrochloride (K89MJ0S5VY)</td>
				<td>oxymetazoline hydrochloride</td>
				<td>R01AA05</td>
				<td>0.05 mg / 1 ml</td>
				<td>Nasal spray, solution</td>
				<td>Nasal use</td>
			</tr>
		</tbody>
	</table>
</div>"
* section[=].entry[0] = Reference(urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a891) "Dimethyl fumarate 30 mg Gastro-resistant tablet"
* section[=].entry[+] = Reference(urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78f1) "Irbesartan 75 mg Tablet"
* section[=].entry[+] = Reference(urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87b1) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* section[=].entry[+] = Reference(urn:uuid:5d129355-4b20-40d8-841f-7f93acbc3e61) ""


// ======== pregnancy
* section[+].title = "Pregnancy History"
* section[=].code = $loinc#10162-6 "History of pregnancies"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Pregancy Status</li>
	</ul>
</div>"
* section[=].entry[0] = Reference(urn:uuid:e06e43a1-38d4-468f-8c35-f7f12da91061) "Pregrancy Status"

// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd1
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO "Norway"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Maria Gravitate, Female, 75 years old (1946-05-05)
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "ips-3"
* active = true
* name.family = "Gravitate"
* name.given = "Maria"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d1
InstanceOf: Practitioner
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Dr. Anne Karlsson
</div>"
* name.family = "Karlsson"
* name.given = "Anne"
* name.prefix = "Dr."





// == ALLERGIES ===
Instance: 1dff4474-fa08-4f45-8260-dbb23094bf01
InstanceOf: AllergyIntolerance
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Hay fever
</div>"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#256259004 "Pollen"
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever"
* patient = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"


Instance: 9d18cddb-8e58-4fbb-82ec-09cc561ac801
InstanceOf: AllergyIntolerance
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Lactose Intolerance 
</div>"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #intolerance
* category = #food
* code = http://snomed.info/sct#782415009 "Intolerance to lactose"
* patient = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
* onsetAge = 1 'a' "year"
* recordedDate = "2009-10-09"
* reaction.substance = http://snomed.info/sct#47703008 "lactose"
* reaction.manifestation[0] = http://snomed.info/sct#21522001 "Abdominal pain"
* reaction.manifestation[+] = http://snomed.info/sct#116289008 "Abdominal bloating"
* reaction.manifestation[+] = http://snomed.info/sct#62315008 "Diarrhoea"



// == CONDITIONS ===
Instance: bcc79261-142c-48ec-b032-f3f9af49ec51
InstanceOf: Condition
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d1) "Dr. Anna Karlsson"




// --- "Congestive heart failure"
Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6251
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Congestive heart failure (2015)
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d1) "Dr. Anna Karlsson"
// ------- "Hypertension"
Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5131
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
* onsetDateTime = "1993"
// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a891
InstanceOf: MedicationStatement
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<table>
		<thead>
			<tr>
				<th>Brand Name</th>
				<th>MAN</th>
				<th>Active Substance</th>
				<th>Common Name</th>
				<th>ATC</th>
				<th>Strength</th>
				<th>Dose Form</th>
				<th>RoA</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Skilarence</td>
				<td>EU/1/17/1201/001</td>
				<td>dimethyl fumarate (FO2303MNI2)</td>
				<td>dimethyl fumarate</td>
				<td>L04AX07</td>
				<td>30 mg</td>
				<td>Gastro-resistant tablet</td>
				<td>Oral use</td>
			</tr>
		</tbody>
	</table>
</div>"
* status = #active
* medicationReference = Reference(urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe361) "Dimethyl fumarate 30 mg Tablet"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
Instance: f6cb1218-f81c-4338-80d8-3c10910f78f1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c1) "Irbesartan 75 mg Tablet"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
Instance: f26084c9-b1c8-46d9-acb2-1d400ade87b1
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef11) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd1) "Maria Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe361
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
Instance: de131e15-ed13-4b31-b38c-3204a84d99c1
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
Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef11
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

Instance: 5d129355-4b20-40d8-841f-7f93acbc3e61
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
Instance: e06e43a1-38d4-468f-8c35-f7f12da91061
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(Patient/patient-example-female)
* effectiveDateTime = "2020-01-10"
* valueCodeableConcept = http://loinc.org#LA15173-0 "Pregnant"
* hasMember = Reference(Observation/pregnancy-edd-example)