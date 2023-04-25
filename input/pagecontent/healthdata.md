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

#### Problem List

To receive the problem list, the following query for conditions should be made:

[base]/Condition?patient=Patient/[patient id]&recorded-date=ge[history date]

#### History of Procedures

To receive procedures for a patient, the following query for procedures should be made:

[base]/Procedure?patient=Patient/[patient id]&date=ge[history date]

#### Diagnostic Results

To receive observation results for a patient, the following query for observations should be made:

[base]/Observation?patient=Patient/[patient id]&date=ge[history date]

### Real World Data Profiles
The profiles that have been defined for this implementation guide are listed [here](artifacts.html).  Here is the list of required sections and the profiles that have been defined for that section:

* Medication Summary - [MedicationStatement](StructureDefinition-MedicationStatementRwd.html), [MedicationRequest](StructureDefinition-MedicationRequestRwd.html), [MedicationDispense](StructureDefinition-MedicationDispenseRwd.html), [MedicationAdminstration](StructureDefinition-MedicationAdministrationRwd.html)
* Problem List - [Condition](StructureDefinition-ConditionRwd.html)
* History of Procedures - [Procedure](StructureDefinition-ProcedureRwd.html)
* Diagnostic Results - [Laboratory Results](StructureDefinition-ObservationLaboratoryResultsRwd.html)

For all other sections, the IPA profiles were deemed sufficient.
