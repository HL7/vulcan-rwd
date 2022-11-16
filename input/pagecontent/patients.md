One of the basic needs of research is finding groups of patients that meet a set of criteria, for cohort feasibility determination.  In many studies, inclusion and exclusion criteria are defined.  This guide does not define how those criteria are represented in FHIR but rather assumes that the criteria is defined and can be turned into questions that can be asked of EHRs to find suitable patients.

Through the use cases that were studied, the following data elements were identified that were needed to identify patients.  Note that we are using clinical terminology in identifying the elements as opposed to the FHIR resource names.

* Patient Demographics
	* Birthdate
	* Gender
	* Death Indicator
	* Race / Ethnicity (NOTE: These were found in US studies)
* Visit
	* Reason for Visit
	* Admission and Discharge Dates
	* Discharge Disposition
* Diagnosis
	* Diagnosis Code
	* Date
	* Confirmation Flag
	* Diagnosis Type
* Lab Test
	* Test Code
	* Date
	* Value
	* Interpretation (high, low, abnormal)
* Procedure
	* Procedure Code
	* Date
	* Outcome
* Medication
	* Drug Code
	* Administration Dates
	* Order Dates

From the above data elements, it was determined that the profiles listed below are needed.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:0px" src="cohort_criterion_fhir_resources.png" alt="Diagram showing the cohort criterion mapped to FHIR resources"/>
  <figcaption>Figure 2 - Cohort Criterion FHIR Resources</figcaption>
</figure>
{::options parse_block_html="true" /}


### Conformance Expectations
This IG expects that all of the below profiles SHALL be supported by a clinical system that is providing data including the extra search parameters defined to allow proper searching of data to find and identify suitable patients.  NOTE: See the section on Medications for the specifics on the different Medication profiles.

### Patient

The [base IPS patient profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Patient-uv-ips.html) is sufficient for our needs of searching for and retrieving patient demographic details. 

|**Clinical Element**|**FHIR Element**|
|---|---|
|Birthdate|birthDate|
|Gender|gender|
|Death Indicator|deceased|
|Race/Ethnicity|* see note below|
{: .grid }

The following search parameters defined in the base Patient resource are needed:

* birthdate
* gender
* deceased

#### Race and Ethnicity
Race and Ethnicity are not part of the base Patient resource nor are they found in the IPS Patient profile as these are not common elements found outside of the United States.  For studies that are US based and have need of searching for or retrieving the race and/or ethnicity of a patient, the US Core extensions for [Race](http://hl7.org/fhir/us/core/StructureDefinition-us-core-race.html) and [Ethnicity](http://hl7.org/fhir/us/core/StructureDefinition-us-core-ethnicity.html) provide the normally collected information and can be added to the Patient instance.

### Encounter
The FHIR Encounter resource is used for recording hospital visits (and visits in general).  To allow searching for encounters, the [Encounter profile](StructureDefinition-EncounterRwd.html) was created that indicates the minimum supported fields needed to determine if a patient has been hospitalized.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Reason for Visit|reasonCode / reasonReference|
|Admission Date|period.start|
|Discharge Date|period.end|
|Discharge Disposition|hospitalization.dischargeDisposition|
{: .grid }

Along with the above elements, it was also determined that status was an important FHIR element to support.

The following search parameters defined in the base Encounter resource are needed:

* reason-code / reason-reference
* date
* status

This guide defines an [extra search parameter](SearchParameter-EncounterDischargeDispositionSearchParameter.html) on Encounter to search for the patient's disposition on discharge.

### Condition
The FHIR Condition resource is used for recording diagnoses.  The [Condition profile](StructureDefinition-ConditionRwd.html) was created that inherits from the [base IPS Condition profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html) and adds encounter and recordedDate as elements that should be supported.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Diagnosis Code|code|
|Date|onset|
|Confirmation Flag|verificationStatus|
|Diagnosis Type|category|
{: .grid }

The following search parameters defined in the base Condition resource are needed:

* code
* onset-date
* verification-status
* clinical-status
* category

### Observation
The FHIR Observation resource is used for recording test results. The [Laboratory Observation Results profile](StructureDefinition-ObservationLaboratoryResultsRwd.html) was created that inherits from the [base IPS Laboratory Observation Results profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-laboratory-uv-ips.html) and adds observation components as elements that should be supported.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Test Code|code|
|Date|effective|
|Value|value|
|Interpretation|interpretation|
{: .grid }

The following search parameters defined in the base Observation resource are needed:

* code
* date
* status
* value-concept
* value-quantity
* value-string

This guide defines an [extra search parameter](SearchParameter-ObservationInterpretationSearchParameter.html) on Observation to search for Observation interpretations.

### Procedure
The FHIR Procedure resource is used for recording procedures.  The [Procedure profile](StructureDefinition-ProcedureRwd.html) was created that inherits from the [base IPS Procedure profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Procedure-uv-ips.html) and adds the outcome as a data element that should be supported.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Procedure Code|code|
|Date|performed|
|Outcome|outcome|
{: .grid }

Along with the above elements, it was also determined that status was an important FHIR element to support.

The following search parameters defined in the base Procedure resource are needed:

* code
* date
* status

This guide defines an [extra search parameter](SearchParameter-ProcedureOutcomeSearchParameter.html) on Procedure to search for Procedure outcomes.

### Medications
FHIR provides a set of resources for recording the ordering, dispensing, and administering of medications.  The MedicationAdministration resource is the prime resource for recording actual use of a medication, but that is rarely found outside of hospital settings.  For non-hospital care, the MedicationRequest, the MedicationDispense, and the MedicationStatement resources need to be searched for and have the administration inferred.  [Here](medications.html) is more information about the use of the Medication resources to determine usage.

The IPS only provides a profie on the MedicationStatement resource and that is used by this guide along with new profiles on the MedicationRequest, MedicationDispense, and MedicationAdministration resources.

#### Conformance Expectations
This IG does not expect every system to support all four of the Medication resources listed below.  We recognize that some systems do not capture dispenses or administrations, for example.  To conform to this guide, a clinical system SHALL support at least one of these Medication resource profiles.  Further, the expectation is that if a system DOES capture medication information, it SHALL expose this data using the profiles below.

|**Clinical Data**|**Required FHIR Profile**|
|---|---|
|Prescriptions|[MedicationRequest](StructureDefinition-MedicationRequestRwd.html)|
|Dispenses|[MedicationDispense](StructureDefinition-MedicationDispenseRwd.html)|
|Administrations|[MedicationAdministration](StructureDefinition-MedicationAdministrationRwd.html)|
|Statements|[MedicationStatement](https://hl7.org/fhir/uv/ips/StructureDefinition-MedicationStatement-uv-ips.html)|
{: .grid }


#### MedicationStatement
The [MedicationStatement profile](StructureDefinition-MedicationStatementRwd.html) was created that inherits from the [base IPS MedicationStatement profile](https://hl7.org/fhir/uv/ips/StructureDefinition-MedicationStatement-uv-ips.html) and adds context and derivedFrom as elements that should be supported.

The derivedFrom element SHALL be included if the MedicationStatement information was taken from a MedicationRequest, MedicationDispense, or MedicationAdministration instance.  It is not marked as mandatory because there will be instances where a MedicationStatement was directly created and not inferred from another resource instance.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Drug Code|medication|
|Administration Dates|effective|
|Order Dates|n/a|
{: .grid }

The drug code can be found either as an actual code on the MedicationStatement instance or by following the reference to the Medication instance.

Along with the above elements, it was also determined that status was an important FHIR element to support.

The following search parameters defined in the base MedicationStatement are needed:

* code / medication.code
* effective
* status

#### MedicationRequest
To allow searching for prescriptions and optionally planned medication requests, the [MedicationRequest profile](StructureDefinition-MedicationRequestRwd.html) was created that indicates the minimum supported fields needed to determine if a patient has been prescribed or will be prescribed a specific medication.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Drug Code|medication|
|Administration Dates|dosageInstruction.timing.bounds|
|Order Dates|authoredOn|
{: .grid }

Along with the above elements, it was also determined that status and intent was an important FHIR element to support.
The following search parameters defined in the base MedicationRequest are needed:

* code / medication.code
* authoredOn
* date
* intent
* status

#### MedicationDispense
To allow searching for dispenses, the [MedicationDispense profile](StructureDefinition-MedicationDispenseRwd.html) was created that indicates the minimum supported fields needed to determine if a patient has been supplied a certain medication.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Drug Code|medication|
|Administration Dates|dosageInstruction.timing.bounds|
|Supply Dates|whenHandedOver|
{: .grid }

Along with the above elements, it was also determined that status was an important FHIR element to support.
The following search parameters defined in the base MedicationDispense are needed:

* code / medication.code
* whenhandedover
* status

#### MedicationAdministration
To allow searching for administrations, the [MedicationAdministration profile](StructureDefinition-MedicationAdministrationRwd.html) was created that indicates the minimum supported fields needed to determine if a patient has taken a certain medication.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Drug Code|medication|
|Administration Dates|effective|
{: .grid }

Along with the above elements, it was also determined that status was an important FHIR element to support.
The following search parameters defined in the base MedicationDispense are needed:

* code / medication.code
* effective-time
* status
