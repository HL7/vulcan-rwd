Profile: EncounterRwd
Parent: Encounter
Description: "A profile on Encounter that indicates the minimum set of attributes required for finding patients who were hospitalized."
* status MS
* subject MS
* subject only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-patient)
* period MS
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-condition or http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-problem-list-item or ProcedureRwd or http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-observation or ImmunizationRecommendation)
* diagnosis MS
  * condition MS
  * condition only Reference(http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-condition or http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-problem-list-item)
* hospitalization MS
  * dischargeDisposition MS
