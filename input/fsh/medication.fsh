Profile: MedicationRequestRwd
Parent: MedicationRequest
Description: "A profile on MedicationRequest that indicates the minimum set of attributes required for finding patients who may be taking certain medications."
* status MS
* intent MS
* medication[x] MS
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* authoredOn MS
* dosageInstruction MS
  * timing MS
    * repeat.bounds[x] MS
* dispenseRequest MS
  * validityPeriod MS
  * numberOfRepeatsAllowed MS
  * expectedSupplyDuration MS

Profile: MedicationDispenseRwd
Parent: MedicationDispense
Description: "A profile on MedicationDispense that indicates the minimum set of attributes required for finding patients who may be taking certain medications."
* status MS
* medication[x] MS
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* quantity MS
* daysSupply MS
* whenHandedOver MS
* dosageInstruction MS
  * timing MS
    * repeat.bounds[x] MS

Profile: MedicationAdministrationRwd
Parent: MedicationAdministration
Description: "A profile on MedicationAdministration that indicates the minimum set of attributes required for finding patients who may be taking certain medications."
* status MS
* medication[x] MS
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* effective[x] MS

Profile: MedicationStatementRwd
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Description: "A profile on MedicationStatement that indicates the minimum set of attributes for use in research studies."
* context MS
* derivedFrom MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slice based on the types."
* derivedFrom contains MedicationSource 1..*
* derivedFrom[MedicationSource] only Reference(MedicationRequestRwd or MedicationDispenseRwd or MedicationAdministrationRwd)
