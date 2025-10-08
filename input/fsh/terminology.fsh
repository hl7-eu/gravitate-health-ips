CodeSystem: LiteracyCS
Id: literacy-cs
Title: "Local Literacy Codes"
* ^content = #complete
* #health-literacy "Health literacy (self-reported)"
* #digital-literacy "Digital literacy (self-reported)"
* #low "Low"
* #medium "Medium"
* #high "High"
* #yes "Yes"
* #no "No"

ValueSet: LiteracyLevelVS
Id: literacy-level-vs
Title: "Literacy Level (Low/Medium/High)"
* include LiteracyCS#low
* include LiteracyCS#medium
* include LiteracyCS#high