Instance: CapabilityStatement-RWDServer
InstanceOf: CapabilityStatement
* name = "RealWorldDataServer"
* title = "Real World Data Server Capability Statement"
* description = "This CapabilityStatement describes the basic rules for the Real World Data server actor that is responsible for providing responses to queries submitted by Real World Data requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by Real World Data servers are defined in this CapabilityStatement.  It is inherits from the International Patient Access server capability statement."
* status = #draft
* date = 2023-04-30
* kind = #requirements
* imports = "http://hl7.org/fhir/uv/ipa/CapabilityStatement/ipa-server|1.0.0"
* fhirVersion = #4.0.1
* format[0] = http://hl7.org/fhir/fhir-format-type#xml
* format[1] = http://hl7.org/fhir/fhir-format-type#json
* implementationGuide = "http://hl7.org/fhir/uv/ipa/ImplementationGuide/hl7.fhir.uv.ipa|1.0.0"
* rest
  * mode = #server
  * resource[0]
    * type = http://hl7.org/fhir/fhir-types#Procedure
    * profile = Canonical(ProcedureRwd)
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "Interpretation"
      * definition = Canonical(ProcedureOutcomeSearchParameter)
      * type = #token
  * resource[+]
    * type = http://hl7.org/fhir/fhir-types#Encounter
    * profile = Canonical(EncounterRwd)
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "DischargeDisposition"
      * definition = Canonical(EncounterDischargeDispositionSearchParameter)
      * type = #token
  * resource[+]
    * type = http://hl7.org/fhir/fhir-types#Observation
    * profile = Canonical(ObservationLaboratoryResultsRwd)
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #search-type
    * searchParam[0]
      * name = "Interpretation"
      * definition = Canonical(ObservationInterpretationSearchParameter)
      * type = #token
  * resource[+]
    * type = http://hl7.org/fhir/fhir-types#MedicationStatement
    * profile = Canonical(MedicationStatementRwd)
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #search-type
  * resource[+]
    * type = http://hl7.org/fhir/fhir-types#MedicationDispense
    * profile = Canonical(MedicationDispenseRwd)
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #search-type
  * resource[+]
    * type = http://hl7.org/fhir/fhir-types#MedicationAdministration
    * profile = Canonical(MedicationAdministrationRwd)
    * interaction[0].code = #read
    * interaction[+].code = #vread
    * interaction[+].code = #search-type
