The following use case was used to determine the requirements for determining a patient cohort along with what data elements were necessary when retrieving clinical data:

### Type 1 or Type 2 Diabetes Treatment Patterns

The details of this study can be found on ClinicalTrials.gov: [NCT05088265](https://clinicaltrials.gov/ct2/show/NCT05088265).

This study is observational, designed to collect real world use and safety data for those using the Bigfoot Unity Diabetes Management System for 12 months.

#### Cohort Criteria
The patients for this study would have the following criteria:

* female or male aged 12 years or greater
* diagnosed with type 1 or type 2 diabetes diagnosis
* have a baseline HbA1c collected within 90 days

These criteria would be represented by the following queries:

    /Patient?birthdate=le<birthdate of 12 years before today>&gender=male,female
    /Condition?code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleDiabetesConditionCodes
    /Observation?status=final&code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleHbA1cTestCodes

The patients would also not have the following criteria:

* Females who are pregnant
* Persons on dialysis

This exclusion criteria would be represented by the following query:

    /Condition?code=http://hl7.org/fhir/sid/icd-10-cm|Z33.1
	/Procedure?code:in=http://hl7/org/fhir/uv/vulcan-rwd/ValueSet/ExampleDialysisProcedureCodes


The patients that were common to the first three queries and were not found in the exclusion queries would form the set of patients representing this cohort.


#### Retrieved Data
For patients that meet the criteria above, the following data, as a minimum, would be retrieved:

* patient demographics
* all HbA1c tests
* all concomitant medications
