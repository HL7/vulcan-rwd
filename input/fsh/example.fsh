RuleSet: bundleEntry(type, id)
* fullUrl = "http://example.org/{type}/{id}"
* resource = {id}

Instance: RWDBundle
InstanceOf: Bundle
Description: "An example bundle showing a patient that met the study criteria and has Real World Data."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2ca799ba-56af-4fa6-ac9c-44f736ef1a02"
* type = #document
* timestamp = "2017-02-24T00:00:00.0000Z"
* entry[0]
  * insert bundleEntry(Composition, RWDComposition)
* entry[+]
  * insert bundleEntry(Patient, RWDPatient)
* entry[+]
  * insert bundleEntry(Device, RWDAuthor)
* entry[+]
  * insert bundleEntry(Organization, RWDLaboratory)
* entry[+]
  * insert bundleEntry(Condition, RWDProblem)
* entry[+]
  * insert bundleEntry(AllergyIntolerance, RWDAllergyIntolerance)
* entry[+]
  * insert bundleEntry(MedicationStatement, RWDMedicationStatementFromRequest)
* entry[+]
  * insert bundleEntry(MedicationStatement, RWDMedicationStatementFromDispense)
* entry[+]
  * insert bundleEntry(MedicationStatement, RWDMedicationStatementFromAdministration)
* entry[+]
  * insert bundleEntry(MedicationRequest, RWDMedicationRequest)
* entry[+]
  * insert bundleEntry(MedicationDispense, RWDMedicationDispense)
* entry[+]
  * insert bundleEntry(MedicationAdministration, RWDMedicationAdministration)
* entry[+]
  * insert bundleEntry(Procedure, RWDProcedure)
* entry[+]
  * insert bundleEntry(Observation, RWDLabResult)
* entry[+]
  * insert bundleEntry(Encounter, RWDEncounter)



Instance: RWDComposition
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Description: "Real World Data Composition that has Real World Data data"
* status = #final
* type = http://loinc.org#60591-5 "Patient Summary"
* subject = Reference(RWDPatient)
* date = 2022-11-15T22:22:15-07:00
* author = Reference(RWDAuthor)
* title = "Real World Data Patient Summary"
* encounter = Reference(RWDEncounter)
* section[0]
  * title = "Medication Summary"
  * code = http://loinc.org#10160-0
  * text.status = #generated
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">Medication Summary</div>"""
  * entry[0] = Reference(RWDMedicationStatementFromRequest)
  * entry[+] = Reference(RWDMedicationStatementFromDispense)
  * entry[+] = Reference(RWDMedicationStatementFromAdministration)
* section[+]
  * title = "Allergies and Intolerances Section"
  * code = http://loinc.org#48765-2
  * text.status = #generated
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">Allergies and Intolerances Section</div>"""
  * entry[0] = Reference(RWDAllergyIntolerance)
* section[+]
  * title = "Problems Section"
  * code = http://loinc.org#11450-4
  * text.status = #generated
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">Problems Section</div>"""
  * entry[0] = Reference(RWDProblem)
* section[+]
  * title = "History of Procedures Section"
  * code = http://loinc.org#47519-4
  * text.status = #generated
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">History of Procedures Section</div>"""
  * entry[0] = Reference(RWDProcedure)
* section[+]
  * title = "Results Section"
  * code = http://loinc.org#30954-2
  * text.status = #generated
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">Results Section</div>"""
  * entry[0] = Reference(RWDLabResult)

Instance: RWDPatient
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Description: "A sample patient for the Real World Data Bundle"
* name.family = "Patient"
* name.given = "Sample"
* gender = #male
* birthDate = 1970-11-27

Instance: RWDAuthor
InstanceOf: Device
Description: "Sample Software that created the Real World Data Bundle"
* deviceName.name = "Real World Data EHR"
* deviceName.type = #model-name

Instance: RWDEncounter
InstanceOf: EncounterRwd
Description: "A visit where the Real World Data patient was diagnosed and given medications."
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* subject = Reference(RWDPatient)
* reasonReference = Reference(RWDProblem)
* period.start = 2022-07-01
* period.end = 2022-07-03
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#home

Instance: RWDMedicationStatementFromRequest
InstanceOf: MedicationStatementRwd
Description: "A medication statement derived from a prescription."
* status = #completed
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#1116632
* subject = Reference(RWDPatient)
* effectiveDateTime = 2022-07-02
* context = Reference(RWDEncounter)
* derivedFrom = Reference(RWDMedicationRequest)

Instance: RWDMedicationRequest
InstanceOf: MedicationRequestRwd
Description: "A medication request showing real world data."
* status = #completed
* intent = #order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#1116632
* subject = Reference(RWDPatient)
* authoredOn = 2022-07-02

Instance: RWDMedicationStatementFromDispense
InstanceOf: MedicationStatementRwd
Description: "A medication statement derived from a dispense."
* status = #completed
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#613391
* subject = Reference(RWDPatient)
* effectiveDateTime = 2022-07-02
* context = Reference(RWDEncounter)
* derivedFrom = Reference(RWDMedicationDispense)

Instance: RWDMedicationDispense
InstanceOf: MedicationDispenseRwd
Description: "A medication request showing real world data."
* status = #completed
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#613391
* subject = Reference(RWDPatient)
* whenHandedOver = 2022-07-02

Instance: RWDMedicationStatementFromAdministration
InstanceOf: MedicationStatementRwd
Description: "A medication statement derived from an administration."
* status = #completed
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#32968
* subject = Reference(RWDPatient)
* effectiveDateTime = 2022-07-02
* context = Reference(RWDEncounter)
* derivedFrom = Reference(RWDMedicationAdministration)

Instance: RWDMedicationAdministration
InstanceOf: MedicationAdministrationRwd
Description: "A medication request showing real world data."
* status = #completed
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#32968
* subject = Reference(RWDPatient)
* effectiveDateTime = 2022-07-02

Instance: RWDAllergyIntolerance
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Description: "An allergy instance representing 'no known allergies'."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-known-allergies
* patient = Reference(RWDPatient)

Instance: RWDProblem
InstanceOf: ConditionRwd
Description: "A sample problem for the real world data patient."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code = http://snomed.info/sct#413838009
* subject = Reference(RWDPatient)
* encounter = Reference(RWDEncounter)
* recordedDate = 2022-07-01

Instance: RWDProcedure
InstanceOf: ProcedureRwd
Description: "A sample procedure for the real world data patient."
* status = #completed
* code = http://snomed.info/sct#418285008 "Angioplasty"
* subject = Reference(RWDPatient)
* performedDateTime = 2022-07-02
* outcome = http://snomed.info/sct#385669000 "Successful"

Instance: RWDLabResult
InstanceOf: ObservationLaboratoryResultsRwd
Description: "A sample lab results for the real world data patient."
* status = #final
* code = http://loinc.org#26515-7
* subject = Reference(RWDPatient)
* performer = Reference(RWDLaboratory)
* effectiveDateTime = 2022-07-01
* valueString = "200000 platelets/uL"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N

Instance: RWDLaboratory
InstanceOf: Organization
Description: "A sample lab."
* name = "Sample Real World Data Laboratory"
