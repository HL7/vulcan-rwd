The following use case was used to determine the requirements for determining a patient cohort along with what data elements were necessary when retrieving clinical data:

### Anti-TNFa Treatment in Patients with Crohn's Disease

The details of this study can be found on ClinicalTrials.gov: [NCT03890445](https://clinicaltrials.gov/ct2/show/NCT03890445).

This study is a prospective, observational study that was looking at the effectiveness of treatment of Crohn's Disease with biosimilar drugs to Adalimumab and Infliximab.  The study size was 1600 patients who had been diagnosed with moderate-to-severe Crohn's Disease receiving treatment of Hyrimoz and Zessly.

#### Cohort Criteria
The patients for this study would have the following criteria:

* female or male aged 18 years or greater
* diagnosed with moderate-to-severe Crohn's Disease (K50  Crohn's disease [regional enteritis])
* treated with Hyrimoz or Zessly
* Harvey-Bradshaw index (HBI) >= 5

These criteria would be represented by the following queries:

    /Patient?birthdate=le<birthdate of 18 years before today>&gender=male,female
    /Condition?code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleCrohnsDisease
    /MedicationAdministration?status=completed&code:in=http://hl7.org/fhir/uv/vulcan-rwd/ValueSet/ExampleAntiTNFADrugs
    /Observation?status=final&code=http://loinc.org|<code for HBI>&value-quantity=ge5

The patients would also not have the following criteria:

* HbA1C measurement < 8.5g/dL

This exclusion criteria would be represented by the following query:

    /Observation?status=final&code=http://loinc.org#41995-2&value-quantity=le8.5|http://unitsofmeasure.org|g%2FdL


The patients that were common to the first four queries and were not found in the exclusion query would form the set of patients representing this cohort.


#### Retrieved Data
For patients that meet the criteria above, the following data, as a minimum, would be retrieved:

* patient demographics
* all Medications from the date of initial treatment of Hyrimoz or Zessly
* any Adverse Events from the date of initial treatment of Hyrimoz or Zessly
* all Inflamatory Bowel Disease (IBD) index measurements from the date of initial treatment of Hyrimoz or Zessly
* any Quality of Life (QoL) scale measurements from the date of initial treatment of Hyrimoz or Zessly
