One of the basic needs of research is finding patients that meet a set of criteria.  In many studies, inclusion and exclusion criteria are defined.  This guide does not define how those criteria are represented in FHIR but rather assumes that the criteria is defined and can be turned into questions that can be asked of EHRs to find suitable patients.

Through the use cases that were studied, the following data elements were identified that were needed to identify patients:

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

From the above data elements, the following profiles are needed:

#### Patient

The [base IPS patient profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Patient-uv-ips.html) is sufficient for our needs of searching for and retrieving patient demographic details.  The following search parameters defined in the base Patient resource are needed:

* birthdate
* gender
* deceased

##### Race and Ethnicity
Race and Ethnicity are not part of the base Patient resource nor are they found in the IPS Patient profile as these are not common elements found outside of the United States.  For studies that are US based and have need of searching for or retrieving the race and/or ethnicity of a patient, the US Core extensions for [Race](http://hl7.org/fhir/us/core/StructureDefinition-us-core-race.html) and [Ethnicity](http://hl7.org/fhir/us/core/StructureDefinition-us-core-ethnicity.html)provide the normally collected information.

#### Condition
The FHIR Condition resource is used for recording diagnoses.  The [base IPS Condition profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Condition-uv-ips.html) is sufficient for our needs of searching for and retrieving patient diagnoses.

The following search parameters defined in the base Condition resource are needed:

* code
* onset-date
* verification-status
* category

#### Observation
The FHIR Observation resource is used for recording test results. The [base IPS Laboratory Observation Results profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Observation-results-laboratory-uv-ips.html) is mostly sufficient for our needs of searching for and retrieving laboratory results.

The following search parameters defined in the base Observation resource are needed:

* code
* date
* value-concept
* value-quantity
* value-string

This guide defines an [extra search parameter](SearchParameter-ObservationInterpretationSearchParameter.html) on Observation to search for Observation interpretations.

#### Procedure
The FHIR Procedure resource is used for recording procedures.  The [base IPS Procedure profile](https://hl7.org/fhir/uv/ips/StructureDefinition-Procedure-uv-ips.html) is mostly sufficient for our needs of searching for and retrieving procedures.  The [Procedure profile](StructureDefinition-ProcedureRwd.html) defined in this IG adds the Procedure.outcome as a Must Support element.

The following search parameters defined in the base Procedure resource are needed:

* code
* date

This guide defines an [extra search parameter](SearchParameter-ProcedureOutcomeSearchParameter.html) on Procedure to search for Procedure outcomes.

#### MedicationRequest

#### MedicationUsage

#### MedicationAdministration

