Instance: gravitate-Cecilia
InstanceOf: Bundle
Title:   "Cecilia Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Cecilia Gravitate"


* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Cecilia-ips-1"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "urn:uuid:93ee42d0-4c5f-4bf7-8894-bb21ef80dbc5" // Composition
* entry[=].resource = cecilia-comp
* entry[+].fullUrl = "urn:uuid:f68aa05c-63e2-4305-992b-a421f743e328" // Patient
* entry[=].resource = cecilia-patient
* entry[+].fullUrl = "urn:uuid:2153a841-3c69-47cb-948d-1d97ce20eb61" // Practictioner
* entry[=].resource = cecilia-pract

* entry[+].fullUrl = "urn:uuid:7b69285e-bf3a-4b8d-a30f-8effd6059a4f" // Condition 1
* entry[=].resource = cecilia-cond-1
* entry[+].fullUrl = "urn:uuid:ebb1a59f-a249-40dd-9868-25879bc9bb71" // Condition 2
* entry[=].resource = cecilia-cond-2
* entry[+].fullUrl = "urn:uuid:0d4addd6-c3ee-468c-9202-026a24293f32" // Condition 3
* entry[=].resource = cecilia-cond-3
* entry[+].fullUrl = "urn:uuid:c2a8ea98-cf92-4f57-933c-7d857fb20b1d" // Condition 3
* entry[=].resource = cecilia-cond-4

* entry[+].fullUrl = "urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a899" // Medication Statement 1
* entry[=].resource = cecilia-med-stat-1
* entry[+].fullUrl = "urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78fd" // Medication Statement 2
* entry[=].resource = cecilia-med-stat-2
* entry[+].fullUrl = "urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87ba" // Medication Statement 3
* entry[=].resource = cecilia-med-stat-3

* entry[+].fullUrl = "urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe36c" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe36c
* entry[+].fullUrl = "urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c4" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c4
* entry[+].fullUrl = "urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef19" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef19


// ======== COMPOSITION
Instance: cecilia-comp
InstanceOf: Composition
Title:   "[Composition] Cecilia Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Cecilia Gravitate"
* id = "gravitate-Cecilia"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(cecilia-pract) "Dr. Anna Karlsson"
* title = "Patient Summary (Cecilia Gravitate)"
* confidentiality = #N


// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>COPD</li>
        <li>Diabetes type 2</li>
		<li>Osteoporosis</li>
		<li>Congestive Heart Failure</li>
	</ul>
</div>"
* section[=].entry[0] = Reference(cecilia-cond-1) "COPD"
* section[=].entry[+] = Reference(cecilia-cond-2) "Diabetese Type 2" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(cecilia-cond-3) "Osteoporosis"
* section[=].entry[+] = Reference(cecilia-cond-4) "Congestive Heart Failure"


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
* section[=].entry[0] = Reference(cecilia-med-stat-1) "Fosamax 70 mg tablets"
* section[=].entry[+] = Reference(cecilia-med-stat-2) "Metformina+sitagliptina"
* section[=].entry[+] = Reference(cecilia-med-stat-3) "Fluticasona 92mcg+vilanterol 22mcg"
* section[=].entry[+] = Reference(cecilia-med-stat-4) "Digoxin"


// == PATIENT ===
Instance: cecilia-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#SWE "Sweden"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Cecilia-1"
* active = true
* name.family = "Gravitate"
* name.given = "Cecilia"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: cecilia-pract
InstanceOf: Practitioner
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Dr. Anne Karlsson
</div>"
* name.family = "Karlsson"
* name.given = "Anne"
* name.prefix = "Dr."



// == CONDITIONS ===
Instance: cecilia-cond-1
InstanceOf: Condition
Usage: #inline
* code.text = "COPD"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(urn:uuid:2153a841-3c69-47cb-948d-1d97ce20eb61) "Dr. Anna Karlsson"

// --- "Congestive heart failure"
Instance: cecilia-cond-2
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Congestive heart failure (2015)
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(urn:uuid:2153a841-3c69-47cb-948d-1d97ce20eb61) "Dr. Anna Karlsson"

Instance: cecilia-cond-3
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* onsetDateTime = "1993"

Instance: cecilia-cond-4
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* onsetDateTime = "1993"

// ====== MEDICATION STATEMENTS
Instance: cecilia-med-stat-1
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
* medicationReference = Reference(urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe36c) "Dimethyl fumarate 30 mg Tablet"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: cecilia-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c4) "Irbesartan 75 mg Tablet"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20053000 "Oral use"

Instance: cecilia-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef19) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

Instance: cecilia-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef19) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(cecilia-patient) "Cecilia Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe36c
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[+] = $phpid#0x9982CA8A825D4561506CE808982E3B9D "dimethyl fumarate, 30 mg/ 1 tablet, Gastro-resistant tablet"
* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#10225000 "Gastro-resistant tablet"
* ingredient.itemCodeableConcept = $unii#FO2303MNI2 "dimethyl fumarate"
* ingredient.itemCodeableConcept.text = "dimethyl fumarate"
* ingredient.strength.numerator = 30 'mg'
* ingredient.strength.denominator = 1 'tablet'


Instance: de131e15-ed13-4b31-b38c-3204a84d99c4
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EMEA/H/C/000142 "Karvea"
* code.coding[+] = $phpid#0x8DFB446EDB3B8AE508AE493827A704E4 "Irbesartan, 75 mg/ 1 tablet, Tablet"
* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#J0E2756Z7N "irbesartan"
* ingredient.itemCodeableConcept.text = "irbesartan"
* ingredient.strength.numerator = 75 'mg'
* ingredient.strength.denominator = 1 'tablet'

Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef19
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#R01AA05 "oxymetazoline"
// * form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator = 0.05 'mg'
* ingredient.strength.denominator = 1 'ml'
