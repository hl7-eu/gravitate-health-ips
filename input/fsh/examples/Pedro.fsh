Instance: gravitate-Pedro
InstanceOf: Bundle
Title:   "Pedro Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Pedro Gravitate"
/*
Pedro
Age: 42 years.
I live alone, single.
Electronics store salesperson
Smoker since the age of 20
Interests:
cultural events and concerts.
I enjoy mountain activities, skiing in
winter and hiking the rest of the year.


Health Conditions
HIV (diagnosed with 38 years)
Depression

Medication & Therapies
Prescribed by doctor
Dolutegravir/Lamivudina
Mirtazapine 15 mg
Calcium
Additional (non prescribed)
-Collagen and magnesium supplements
-Vitamin c supplements
-Protein supplements
Physical exercise (gym)


*/

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "Pedro-ips-1"
* type = #document
* timestamp = "2021-04-18T09:22:00+02:00"
* entry[0].fullUrl = "urn:uuid:5702fd1d-dd26-402e-a7c0-7629a5d9bba1" // Composition
* entry[=].resource = 5702fd1d-dd26-402e-a7c0-7629a5d9bba1
* entry[+].fullUrl = "urn:uuid:be61951b-44fc-4853-8822-f9d398193c50" // Patient
* entry[=].resource = pedro-patient
* entry[+].fullUrl = "urn:uuid:45cd0bd4-f685-4117-a9f0-5c53fffb7266" // Practictioner
* entry[=].resource = pedro-pract


* entry[+].fullUrl = "urn:uuid:de06df6b-0967-4b01-822b-7cfeea970aa7" // Condition 2
* entry[=].resource = pedro-cond-1

* entry[+].fullUrl = "urn:uuid:de06df6b-0967-4b01-822b-7cfeea970aa7" // Condition 2
* entry[=].resource = pedro-cond-2

* entry[+].fullUrl = "urn:uuid:18eb9898-dea7-4c5e-b097-e507e011747b" // Medication Statement 1 - "
* entry[=].resource = pedro-med-stat-1
* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 -
* entry[=].resource = pedro-med-stat-2

* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 -
* entry[=].resource = pedro-med-stat-3

* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 -
* entry[=].resource = pedro-med-stat-4

* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 -
* entry[=].resource = pedro-med-stat-5

* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 -
* entry[=].resource = pedro-med-stat-6

* entry[+].fullUrl = "urn:uuid:c90b943a-3d8e-4f14-b56d-5c5c208b2065" // Medication Statement 2 -
* entry[=].resource = pedro-med-stat-7

* entry[+].fullUrl = "urn:uuid:9d7be868-8264-4d94-ad04-ef04ecc92e52" // Medication 1 - 
* entry[=].resource = 9d7be868-8264-4d94-ad04-ef04ecc92e52


* entry[+].fullUrl = "urn:uuid:fdb5c97f-0a46-41ba-bc34-2efd2ef2f7e4" // Medication 2
* entry[=].resource = fdb5c97f-0a46-41ba-bc34-2efd2ef2f7e4



// ====================================================== COMPOSITION ======================================================
Instance: pedro-comp
InstanceOf: Composition
Usage: #inline
* id = "gravitate-Pedro"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(pedro-patient) "Pedro Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(pedro-pract) "Dr. Anna Karlsson" // to be updated ?
* title = "Patient Summary (Pedro Gravitate)"
* confidentiality = #N


// ====================================================== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated

* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>HIV</li>
        <li>Depression</li>
	</ul>
</div>"
* section[=].entry[0] = Reference(pedro-cond-1) "HIV"
* section[=].entry[+] = Reference(pedro-cond-2) "Depression" 

// ====================================================== MEDICATIONS
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
* section[=].entry[0] = Reference(pedro-med-stat-1) "Dolutegravir/Lamivudina"
* section[=].entry[+] = Reference(pedro-med-stat-2) "Mirtazapine 15 mg "
* section[=].entry[+] = Reference(pedro-med-stat-3) "Calcium carbonate 500 mg "
* section[=].entry[+] = Reference(pedro-med-stat-4) "Cinitrapide 1mg"
* section[=].entry[+] = Reference(pedro-med-stat-5) "-Collagen and magnesium supplements"
* section[=].entry[+] = Reference(pedro-med-stat-6) "-Vitamin c supplements"
* section[=].entry[+] = Reference(pedro-med-stat-7) "- Protein supplements "



// ====================================================== PATIENT ======================================================
Instance: pedro-patient
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#ES "Spain"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* text.status = #generated

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
Age: 42 years.
I live alone, single.
Electronics store salesperson
Smoker since the age of 20
Interests:
cultural events and concerts.
I enjoy mountain activities, skiing in
winter and hiking the rest of the year.


Health Conditions
HIV (diagnosed with 38 years)
Depression 
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "Pedro-1"
* active = true
* name.family = "Gravitate"
* name.given = "Pedro"
* gender = #female
* birthDate = "1980-10-05" 


// ====================================================== Practitioner =========================================================
Instance: pedro-pract
InstanceOf: Practitioner
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Dr. Xavier García
</div>"
* name.family = "García"
* name.given = "Xavier"
* name.prefix = "Dr."

// ====================================================== CONDITIONS ======================================================


// --- Depression
Instance: pedro-cond-1
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Depression
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#35489007 "Depressive disorder (disorder)"
* code.text = "Depressive disorder (disorder)"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"

// --- HIV
Instance: pedro-cond-2
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	HIV (2018)
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#86406008 "Human immunodeficiency virus infection"
* code.text = "Human immunodeficiency virus infection"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* onsetDateTime = "2018"
* asserter = Reference(urn:uuid:45cd0bd4-f685-4117-a9f0-5c53fffb7266) "Dr. Xavier García"


// ====================================================== MEDICATION STATEMENTS ======================================================
Instance: pedro-med-stat-1
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
* medicationReference = Reference(urn:uuid:9d7be868-8264-4d94-ad04-ef04ecc92e52) "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20066000 "Subcutaneous use"


Instance: pedro-med-stat-2
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
* medicationReference = Reference(urn:uuid:fdb5c97f-0a46-41ba-bc34-2efd2ef2f7e4) "Monuril 3g granules for oral solution"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
* basedOn = Reference(MedicationStatement/c872135e-f219-4f32-8fd6-7099009abf42)


Instance: pedro-med-stat-3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785g) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"

Instance: pedro-med-stat-4
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785g) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"


Instance: pedro-med-stat-5
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785g) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"


Instance: pedro-med-stat-6
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785g) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"


Instance: pedro-med-stat-7
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:6f4151e9-91f6-4f1e-adc3-fb94dda7785g) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:be61951b-44fc-4853-8822-f9d398193c50) "Pedro Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"


// ====================================================== MEDICATIONS ======================================================

Instance: 9d7be868-8264-4d94-ad04-ef04ecc92e52
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


Instance: fdb5c97f-0a46-41ba-bc34-2efd2ef2f7e4
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


Instance: 6f4151e9-91f6-4f1e-adc3-fb94dda7785g
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

