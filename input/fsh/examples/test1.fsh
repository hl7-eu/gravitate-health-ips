
// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f735711
InstanceOf: Composition
Usage: #inline
* id = "gravitate-maria"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd2) "Maria Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d2) "Dr. Anna Karlsson"
* title = "Patient Summary (Maria Gravitate)"
* confidentiality = #N
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Hay fever (pollen)</li>
        <li>Lactose Intolerance</li>
	</ul>
</div>"
* section[=].entry = Reference(urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf02) "Hay fever (pollen)"

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
* section[=].entry[0] = Reference(urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec52) "Psoriasis"

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
* section[=].entry[0] = Reference(urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a892) "Dimethyl fumarate 30 mg Gastro-resistant tablet"

// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd2
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
* identifier[=].value = "maria-1"
* active = true
* name.family = "Gravitate"
* name.given = "IPS"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d2
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
Instance: 1dff4474-fa08-4f45-8260-dbb23094bf02
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
* patient = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"


// == CONDITIONS ===
Instance: bcc79261-142c-48ec-b032-f3f9af49ec52
InstanceOf: Condition
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd6) "Maria Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d5) "Dr. Anna Karlsson"

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
