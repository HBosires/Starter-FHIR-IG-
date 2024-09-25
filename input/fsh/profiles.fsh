Profile: Kenya-Patient
Parent: Patient
Id: Kenya-patient
Title: "Kenya-Patient"
Description: "Kenya Patient"
* maritalStatus 1..1
* gender 1..1
* telecom 0..*
* name 1..*
* name.family 1..1
* name.given 1..*
* birthdate 0..1
* address 0..*
* address.city 1..1
* address.line 1..1
* address.district 1..1
* address.state 1..1
* address.country 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slice based on the type of identifier"
* identifier ^slicing.ordered = false
* identifier contains
    MRN 1..1 and
    NID 0..1 
identifier [NID].value 1..1
identifier [NID].system="http://jembi.org/fhir/ImplementationGuide/starter-fhir-ig-hezekiah/identifier/nid"


