Instance: gravitate-example-testing-scenario-bundle
InstanceOf: Bundle-uv-ips
Title:   "Example Test Scenario Gravitate's IPS"
Usage: #example
Description: "Example of International Patient Summary for Example Test Scenario Gravitate"


* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "example-test-scenario-ips-1"
* type = #document
* timestamp = "2021-04-18T09:22:00+02:00"

* entry[0].fullUrl = "https://myserver.org/Composition/gravitate-example-testing-scenario-composition" 
* entry[=].resource = gravitate-example-testing-scenario-composition
* entry[+].fullUrl = "https://myserver.org/Patient/gravitate-example-testing-scenario-patient" 
* entry[=].resource = gravitate-example-testing-scenario-patient


* entry[+].fullUrl = "https://myserver.org/MedicationStatement/gravitate-example-testing-scenario-medstat1" 
* entry[=].resource = gravitate-example-testing-scenario-medstat1
* entry[+].fullUrl = "https://myserver.org/MedicationStatement/gravitate-example-testing-scenario-medstat2" 
* entry[=].resource = gravitate-example-testing-scenario-medstat2




// ======== COMPOSITION
Instance: gravitate-example-testing-scenario-composition
InstanceOf: Composition-uv-ips
Usage: #inline
Title:   "[Composition] Example Test Scenario Gravitate's IPS"
* id = "gravitate-example-test-scenario"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(gravitate-example-testing-scenario-patient) 
* date = "2018-07-10T15:22:00+02:00"
* title = "International Patient Summary"
* confidentiality = #N
* author.display = "Gravitate-Health"



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
* section[=].entry[+] = Reference(gravitate-example-testing-scenario-medstat1) "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
* section[=].entry[+] = Reference(gravitate-example-testing-scenario-medstat2) "Monuril 3 g granules for oral solution"

* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-NZ' xml:lang='en-NZ'>There is no information available regarding the subject's allergy conditions.</div>"
* section[=].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[=].emptyReason.text = "No information available"

* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list - Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-NZ' xml:lang='en-NZ'>There is no information available about the subject's health problems or disabilities.</div>"
* section[=].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[=].emptyReason.text = "No information available"


Instance: gravitate-example-testing-scenario-patient
InstanceOf: Patient
Usage: #inline

* text.status = #generated

// text TO BE REVIEWED
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Example Test Scenario Gravitate, Female, 75 years old (1946-05-05) 
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "example-test-scenario-1"
* active = true
* name.family = "Gravitate"
* name.given = "Example Test Scenario"
* gender = #female
* birthDate = "1946-05-05" // TO BE REVIEWED




// ====== MEDICATION STATEMENTS
Instance: gravitate-example-testing-scenario-medstat1
InstanceOf: MedicationStatement
Usage: #inline

* status = #active
* medicationReference = Reference(9d7be868-8264-4d94-ad04-ef04ecc92e52) "Dovato 50 mg/300 mg (Dolutegravir/ Lamivudine) tablets"
* subject = Reference(gravitate-example-testing-scenario-patient) "Example Test Scenario Gravitate"
* dosage.route = $edqm#20053000 "Oral use"



Instance: gravitate-example-testing-scenario-medstat2
InstanceOf: MedicationStatement
Usage: #inline

* status = #active
* medicationReference = Reference(9d7be868-8264-4d94-ad04-ef04ecc92i99) "BIKTARVY Bictegravir/Emtricitabine/Tenofovir Alafenamide 1 t QD"
* subject = Reference(gravitate-example-testing-scenario-patient) "Example Test Scenario Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
