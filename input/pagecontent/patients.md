One of the basic needs of research is finding patients that meet a set of criteria.  In many studies, inclusion and exclusion criteria are defined.  This guide does not define how those criteria are represented in FHIR but rather assumes that the criteria is defined and can be turned into questions that can be asked of EHRs to find suitable patients.

Through the use cases that were studied, the following data elements were identified that were needed to identify patients.  Note that we are using clinical terminology in identifying the elements as opposed to the FHIR resource names.

* Patient Demographics
	* Birthdate
	* Gender
	* Death Indicator
	* Race / Ethnicity (NOTE: These were found in US studies)
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

From the above data elements, it was determined that the following profiles are needed:

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

### Condition
The FHIR Condition resource is used for recording diagnoses.  The [base IPS Condition profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html) is sufficient for our needs of searching for and retrieving patient diagnoses.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Diagnosis Code|code|
|Date|onset|
|Confirmation Flag|verificationStatus|
|Diagnosis Type|category|
{: .grid }

Along with the above elements, it was also determined that clinicalStatus was an important FHIR element to support.

The following search parameters defined in the base Condition resource are needed:

* code
* onset-date
* verification-status
* clinical-status
* category

### Observation
The FHIR Observation resource is used for recording test results. The [base IPS Laboratory Observation Results profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-laboratory-uv-ips.html) is mostly sufficient for our needs of searching for and retrieving laboratory results.

|**Clinical Element**|**FHIR Element**|
|---|---|
|Test Code|code|
|Date|effective|
|Value|value|
|Interpretation|interpretation|
{: .grid }

Along with the above elements, it was also determined that status was an important FHIR element to support.

The following search parameters defined in the base Observation resource are needed:

* code
* date
* status
* value-concept
* value-quantity
* value-string

This guide defines an [extra search parameter](SearchParameter-ObservationInterpretationSearchParameter.html) on Observation to search for Observation interpretations.

### Procedure
The FHIR Procedure resource is used for recording procedures.  The [base IPS Procedure profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Procedure-uv-ips.html) is mostly sufficient for our needs of searching for and retrieving procedures.  The [Procedure profile](StructureDefinition-ProcedureRwd.html) defined in this IG adds the Procedure.outcome as a Must Support element.

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
FHIR provides a set of resources for recording the ordering, dispensing, and administering of medications.  The MedicationAdministration resource is the prime resource for recording actual use of a medication, but that is rarely found outside of hospital settings.  For non-hospital care, the MedicationRequest, the MedicationDispense, and the MedicationStatement resources need to be searched for and have the administration inferred.

The IPS only provides a profie on the MedicationStatement resource and that is used by this guide along with new profiles on the MedicationRequest, MedicationDispense, and MedicationAdministration resources.

#### MedicationStatement
The [base IPS MedicationStatement profile](https://hl7.org/fhir/uv/ips/StructureDefinition-MedicationStatement-uv-ips.html) is sufficient for our needs of searching for and retrieving statements made about a patient's use of a medication.

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

#### MedicationDispense

#### MedicationAdministration

