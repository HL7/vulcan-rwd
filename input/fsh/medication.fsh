Profile: MedicationDispenseRwd
Parent: MedicationDispense
Description: "A profile on MedicationDispense that indicates the minimum set of attributes required for finding patients who may be taking certain medications."
* status MS
* medication[x] MS
* medicationReference only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medication)
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient)
* quantity MS
* daysSupply MS
* whenHandedOver MS
* dosageInstruction MS
  * text MS

Profile: MedicationAdministrationRwd
Parent: MedicationAdministration
Description: "A profile on MedicationAdministration that indicates the minimum set of attributes required for finding patients who may be taking certain medications."
* status MS
* medication[x] MS
* medicationReference only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medication)
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient)
* effective[x] MS

Profile: MedicationStatementRwd
Parent: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationstatement
Description: "A profile on MedicationStatement that indicates the minimum set of attributes for use in research studies."
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the types."
* derivedFrom contains MedicationSource 1..*
* derivedFrom[MedicationSource] only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest or MedicationDispenseRwd or MedicationAdministrationRwd)
