The following use case was used to determine the requirements for determining a patient cohort along with what data elements were necessary when retrieving clinical data:

### COVID-19 BNT162b2 Vaccine Effectiveness Study

The details of this study can be found on ClinicalTrials.gov: [NCT04848584](https://clinicaltrials.gov/ct2/show/NCT04848584).

The primary objective of this study is to determine the vaccine effectiveness of 2 doses of Pfizer-BioNTech BNT162b2 vaccine against COVID-19-associated hospitalization. There will be a large retrospective database study using two parallel study designs: a test-negative case-control design and a retrospective cohort design. Exploratory analyses of VE estimates by strain type will be conducted.

#### Cohort Criteria
The patients for this study would have the following criteria:

* female or male aged 5 years or greater
* admitted to hospital with acute respiratory infection
* received a PCR test for SARS-CoV-2


These criteria would be represented by the following queries:

    /Patient?birthdate=le<birthdate of 5 years before today>&gender=male,female
    /Condition?code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleRespiratoryConditionCodes
    /Observation?status=final&code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleCOVID19TestCodes

The patients would also not have the following criteria:

* patients who receive only another newly licensed or investigational SARS-CoV-2 vaccine or COVID19 prophylactic agent prior to hospitalization

This exclusion criteria would be represented by the following query:

    /Immunization?status=completed&vaccine-code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleNonBNT162b2Codes


The patients that were common to the first three queries and were not found in the exclusion query would form the set of patients representing this cohort.


#### Retrieved Data
For patients that meet the criteria above, the following data, as a minimum, would be retrieved:

* patient demographics
* all Medications from the date of admittance to hospital
* all COVID test results
* all vaccination records
