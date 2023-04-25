### Fetching Patient Records
Getting access to the EHR to be able to retrieve patient records is accomplished by following the requirements of International Patient Access.  This guide provides additional details on the needed queries and the relevant data elements that are important for supporting clinical research.  

#### Medication Summary
To receive medication summary information, a requesting system will have to query the four different Medication workflow resources to find all information about a patient's medications.

|**Resource Type**|**Query**|
|---|---|
|MedicationRequest|[base]/MedicationRequest?patient=Patient/[patient id]&authoredon=ge[history date]|
|MedicationDispense|[base]/MedicationDispense?patient=Patient/[patient id]&whenhandedover=ge[history date]|
|MedicationAdministration|[base]/MedicationAdministration?patient=Patient/[patient id]&effective-time=ge[history date]|
|MedicationStatement|[base]/MedicationStatement/patient=Patient/[patient id]&effective=ge[history date]|
{: .grid }

The [IPA MedicationRequest](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-medicationrequest.html) and [IPA MedicationStatement](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-medicationstatement.html) profiles along with the [IPA Medication](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-medication.html) profile provide the necessary information that are important to RWD.  This guide defines a profile on [MedicationDispense](StructureDefinition-MedicationDispenseRwd.html) and [MedicationAdministration](StructureDefinition-MedicationAdministrationRwd.html) because those resources are important to get a complete picture of the medications that a patient is taking.  See the [Medications](medications.html) section of this guide for more information on determining a patient's medications.

#### Problem List

To receive the problem list, the following query for conditions should be made:

[base]/Condition?patient=Patient/[patient id]&recorded-date=ge[history date]

The [IPA Condition](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-condition.html) and [IPA Problem List Item](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-problem-list-item.html) profiles provide the necessary information for RWD.

#### History of Procedures

To receive procedures for a patient, the following query for procedures should be made:

[base]/Procedure?patient=Patient/[patient id]&date=ge[history date]

This guide defines a [Procedure](StructureDefinition-ProcedureRwd.html) profile since the IPA guide does not.

#### Diagnostic Results

To receive observation results for a patient, the following query for observations should be made:

[base]/Observation?patient=Patient/[patient id]&date=ge[history date]

This guide defines a [Laboratory Results](StructureDefinition-ObservationLaboratoryResultsRwd.html) profile that adds component observations to the base [IPA Observation](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-observation.html) profile.

#### Patient Visits

To receive patient visits for a patient, the following query for encounters should be made:

[base]/Encounter?patient=Patient/[patient id]&date=ge[history date]

This guide defines an [Encounter](StructureDefinition-EncounterRwd.html) profile since the IPA guide does not.
