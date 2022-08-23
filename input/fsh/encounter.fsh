Profile: EncounterRwd
Parent: Encounter
Description: "A profile on Encounter that indicates the minimum set of attributes required for finding patients who were hospitalization."
* status MS
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* period MS
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips or ProcedureRwd or http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips or ImmunizationRecommendation)
* diagnosis MS
  * condition MS
  * condition only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips or ProcedureRwd)
* hospitalization MS
  * dischargeDisposition MS
