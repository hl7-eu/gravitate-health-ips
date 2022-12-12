Instance: gravitate-Matilda
InstanceOf: Bundle
Title:   "Matilda Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Matilda Gravitate"
/*
Matilda
Age: /2 years.
Married, with 2 married children
Retired

Interests:
Sewing
Dogs
Classical music

Medication & Therapies
Prescribed by doctor
Humira 40 mg
(adalimumab): solution for injection in prefilled pen
Paracetamol
Pentasa 1 g
Precribed by digestive doctor: dietetic recommendations
Additional (non prescribed)
Physical exercise (daily walk with dog)
Care Professional Concerns
Chronic disease, with potential
complications
I try to practice a moderate level of
physical activity, because it has positive
effects on my physical health
*/

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Matilda-ips-1"
* type = #document
* timestamp = "2021-04-18T09:22:00+02:00"
* entry[0].fullUrl = "urn:uuid:5702fd1d-dd26-402e-a7c0-7629a5d9bba1" // Composition
* entry[=].resource = 5702fd1d-dd26-402e-a7c0-7629a5d9bba1
* entry[+].fullUrl = "matilda-patient" // Patient
* entry[=].resource = be61951b-44fc-4853-8822-f9d398193c50
* entry[+].fullUrl = "urn:uuid:45cd0bd4-f685-4117-a9f0-5c53fffb7266" // Practictioner
* entry[=].resource = 45cd0bd4-f685-4117-a9f0-5c53fffb7266
* entry[+].fullUrl = "urn:uuid:cb6e84fa-4302-4569-ac1c-6b1b32507d16" // Allergy - Lactose
* entry[=].resource = cb6e84fa-4302-4569-ac1c-6b1b32507d16
// * entry[+].fullUrl = "urn:uuid:914a0d82-accd-4e54-bfa4-07c278522ef5" // Condition 1
// * entry[=].resource = 914a0d82-accd-4e54-bfa4-07c278522ef5
* entry[+].fullUrl = "urn:uuid:de06df6b-0967-4b01-822b-7cfeea970aa7" // Condition 2
* entry[=].resource = de06df6b-0967-4b01-822b-7cfeea970aa7
// * entry[+].fullUrl = "urn:uuid:e77dd0c2-f0cd-46cd-abfb-7a00149eff68" // Condition 3
// * entry[=].resource = e77dd0c2-f0cd-46cd-abfb-7a00149eff68
* entry[+].fullUrl = "urn:uuid:18eb9898-dea7-4c5e-b097-e507e011747b" // Medication Statement 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = 18eb9898-dea7-4c5e-b097-e507e011747b
* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 - "Monuril 3 g granules for oral solution"
* entry[=].resource = c90b943a-3d8e-4f14-b56d-5c5c208b2065

* entry[+].fullUrl = "urn:uuid:c872135e-f219-4f32-8fd6-7099009abf42" // Medication Request 1
* entry[=].resource = c872135e-f219-4f32-8fd6-7099009abf42


/*----
* entry[+].fullUrl = "urn:uuid:fbc29713-c2bc-4ebd-9422-8a8326d5f908" // Medication Statement 3
* entry[=].resource = fbc29713-c2bc-4ebd-9422-8a8326d5f908
-----------------*/


* entry[+].fullUrl = "urn:uuid:9d7be868-8264-4d94-ad04-ef04ecc92e51" // Medication 1 - "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* entry[=].resource = 9d7be868-8264-4d94-ad04-ef04ecc92e51


* entry[+].fullUrl = "urn:uuid:fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et" // Medication 2
* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et

/*-----
* entry[+].fullUrl = "urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785y" // Medication 3
* entry[=].resource = 6f4151e9-91f6-4f1e-adc3-fb94dda7785y
--------- */

// ======== COMPOSITION
Instance: matilda-comp
InstanceOf: Composition
Title:   "Matilda Gravitate's IPS Composition"
Usage: #example
Description: "Example of International Patient Summary for Matilda Gravitate"
* id = "gravitate-Matilda"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(urn:uuid:45cd0bd4-f685-4117-a9f0-5c53fffb7266) "Dr. Anna Karlsson" // to be updated ?
* title = "Patient Summary (Matilda Gravitate)"
* confidentiality = #N



// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Diabetes type 1</li>
	</ul>
</div>"
// * section[=].entry[0] = Reference(urn:uuid:914a0d82-accd-4e54-bfa4-07c278522ef5) "Psoriasis"
// * section[=].entry[+] = Reference(urn:uuid:e77dd0c2-f0cd-46cd-abfb-7a00149eff68) "Hypertension" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(urn:uuid:de06df6b-0967-4b01-822b-7cfeea970aa7) "Diabetes type 1"

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
				<td>Humalog Mix50 Insulin KwikPen, 3ml pre-fill</td>
				<td>EU/1/96/007/035</td>
				<td>insulin lispro (GFX7QIS1II)</td>
				<td>insulin lispro</td>
				<td>A10AD04</td>
				<td>100 U/ml</td>
				<td>Suspension for injection</td>
				<td>Subcutaneous use</td>
			</tr>
			<tr>
				<td>Monuril 3 g granules for oral solution</td>
				<td>PL31654/0006</td>
				<td>FOSFOMYCIN (2N81MY12TE)</td>
				<td>fosfomycin</td>
				<td>J01XX01</td>
				<td>3 g (as trometamol: 5.631g/sachet)</td>
				<td>Granules for oral solution</td>
				<td>Oral use</td>
			</tr>
		</tbody>
	</table>
</div>"
* section[=].entry[0] = Reference(urn:uuid:18eb9898-dea7-4c5e-b097-e507e011747b) "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* section[=].entry[+] = Reference(urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065) "Monuril 3 g granules for oral solution"
// * section[=].entry[+] = Reference(urn:uuid:fbc29713-c2bc-4ebd-9422-8a8326d5f908) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"


// == PATIENT ===
Instance: matilda-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#GB "United Kingdom"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Matilda Gravitate, Female, 75 years old (1946-05-05) 
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Matilda-1"
* active = true
* name.family = "Gravitate"
* name.given = "Matilda"
* gender = #female
* birthDate = "1946-05-05" // TO BE REVIEWED


// == Practitioner ===

Instance: matilda-pract
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


// --- "Diabetes type 1"
Instance: matilda-cond-1
InstanceOf: Condition
// TO BE REVIEWED, changed only condition code
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Diabetes mellitus type 1 (2015)
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#46635009 "Diabetes mellitus type 1"
* code.text = "Diabetes type 1"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(urn:uuid:45cd0bd4-f685-4117-a9f0-5c53fffb7266) "Dr. Anna Karlsson"



// ====== MEDICATION STATEMENTS
Instance: matilda-cond-2
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
				<td>Humalog Mix50 Insulin KwikPen, 3ml pre-fill</td>
				<td>EU/1/96/007/035</td>
				<td>insulin lispro (GFX7QIS1II)</td>
				<td>insulin lispro</td>
				<td>A10AD04</td>
				<td>100 U/ml</td>
				<td>Suspension for injection </td>
				<td>Subcutaneous use</td>
			</tr>
		</tbody>
	</table>
</div>"
* status = #active
* medicationReference = Reference(urn:uuid:9d7be868-8264-4d94-ad04-ef04ecc92e51) "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20066000 "Subcutaneous use"



Instance: matilda-med-stat-1
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
				<td>Monuril 3 g granules for oral solution</td>
				<td>PL31654/0006</td>
				<td>FOSFOMYCIN (2N81MY12TE)</td>
				<td>fosfomycin</td>
				<td>J01XX01</td>
				<td>3 g (as trometamol: 5.631g/sachet)</td>
				<td>Granules for oral solution</td>
				<td>Oral use</td>
			</tr>
		</tbody>
	</table>
</div>"
* status = #active
* medicationReference = Reference(urn:uuid:fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et) "Monuril 3g granules for oral solution"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
* basedOn = Reference(MedicationStatement/c872135e-f219-4f32-8fd6-7099009abf42)

Instance: matilda-med-stat-2
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785y) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(matilda-patient) "Matilda Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

// ====== MEDICATIONS

Instance: 9d7be868-8264-4d94-ad04-ef04ecc92e51
InstanceOf: Medication
Usage: #inline

* code.coding[0] = $spor-man#EU/1/96/007/035 "Humalog Mix50"
* code.coding[+] = $phpid#0x073AF2E5B92AE19E8B67635AFFB3D6CA "insulin lispro, 100 units/ml, suspension for injection"
// UK dm+d "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
* code.coding[+] = http://snomed.info/sct/83821000000107#13884911000001102 "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
* code.coding[+] = $atc#A10AD04 "insulin lispro"
* form = $edqm#11202000 "Suspension for injection"
* ingredient.itemCodeableConcept = $unii#GFX7QIS1II "insulin lispro"
* ingredient.itemCodeableConcept.text = "insulin lispro"
* ingredient.strength.numerator.value = 100
* ingredient.strength.numerator.unit = "units"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #U
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #ml


Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2f7et
InstanceOf: Medication
Usage: #inline


* code.coding[0] = $spor-man#PL31654/0006 "Monuril"
* code.coding[+] = $phpid#0xE857DA811B4A6F3BD57810C45D2EA1ED "Fosfomycin, 3g, Granules for oral solution"
* code.coding[+] = $atc#J01XX01 "fosfomycin"
* form = $edqm#10112000 "Granules for oral solution"


* ingredient.itemCodeableConcept = $unii#7FXW6U30GY "FOSFOMYCIN TROMETHAMINE"
* ingredient.itemCodeableConcept.text = "FOSFOMYCIN TROMETAMOL"
* ingredient.strength.numerator.value = 5.631
* ingredient.strength.numerator.unit = "g"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #g
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Sachet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{sachet}


Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda7785y
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