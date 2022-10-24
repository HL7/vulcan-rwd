### Extended IPS Request
One of the ways that patient health data can be retrieved is by requesting a patient summary document from the source system.  This IG expands the use of the [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/ipsStructure.html) for this purpose.  All of the IPS sections are used but the profiles that are returned are the Real World Data versions of the profiles which have been added on to for RWD purposes.

A patient summary document is a FHIR Bundle with type = 'document' and includes, as the first resource, a Composition resource.  This Composition resource provides "meta" information about the information contained in the document, i.e. author, date, subject, etc.  It also breaks the data down into different sections with each section having a code that indicates the section type as well as the specific type of data, represented as FHIR resource instances, that can be found in each section.

#### Extended IPS Request Operation
For source systems that support the extended IPS request, they SHALL support the Retrieve Extended IPS FHIR operation on the Patient endpoint for a specific Patient id.

[base]/Patient/[id]/$retrieveExtendedIPS(?historyPeriod=[# of months])

There is an optional parameter to the operation which is the number of months to consider history.  This history period is found in most of the sections below.

#### Extended IPS Request Sections
##### Medication Summary
The medication summary section contains a description of the patient’s medications.  The content will contain all of the currently active medications plus any medications that have been administered in the given history period.

The entries in this section SHALL be one of:

* an entry stating that the patient is known not to be on any medications;
* an entry stating that no information is available about a patient's medications;
* one or more entries listing the patient's medications

The entries will be MedicationStatement instances where the MedicationStatement points to the optional source resource that generated the statement (i.e. a MedicationRequest representing the prescription details that were used to infer that a patient is on a given medication).

##### Problem List
The problem list section describes clinical problems, conditions, or diagnoses that are currently being monitored for the patient.

##### History of Procedures
The history of procedures section contains a description of all procedures for the patient performed in the given history period.

##### Diagnostic Results
The diagnostic results section lists relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient in the given history period.  Some of these results may be laboratory results, others may be anatomic pathology results and others, radiology results.

##### Other Recommended Sections
These sections from the IPS have no change and are recommended to be included if there is data:

* Allergies and Intolerances
* Immunizations
* Vital Signs

##### Other Optional Sections
These sections from the IPS have no change and are optional to be included if there is data:

* Past history of illnesses
* Pregnancy (status and history summary)
* Social History
* Plan of Care
* Functional Status
* Advance Directives
* Medical Devices

### EHR Queries
There will be source systems that do not support the requesting of a patient summary document.  In those instances, requesting systems will need to make individual queries to retrieve the data needed.  This section details the needed queries.

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

For all other sections, the IPS profiles were deemed sufficient.

### Patient Consent to Share Data
EHRs will be gathering Patient consent and they will share what data they can.
