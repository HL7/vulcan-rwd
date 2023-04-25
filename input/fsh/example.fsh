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
InstanceOf: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest
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

Instance: RWDProblem
InstanceOf: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-problem-list-item
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
InstanceOf: http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-observation
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
