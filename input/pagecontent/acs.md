The following use case was used to determine the requirements for determining a patient cohort along with what data elements were necessary when retrieving clinical data:

### Evaluate the treatment of Acute Coronary Syndrome (ACS) with oral antiplatelets (OAPs)

The details of this study can be found on ClinicalTrials.gov: [NCT02190123](https://clinicaltrials.gov/ct2/show/NCT02190123).

This study is a retrospective study that was looking at the effectivencess and persistence fof treatment of Acute Coronary Syndrome with oral antiplatelets.  The study size was 500 patients who had been diagnosed with an episode of Acute Coronary Syndrome and had been treated with oral antiplatelets.

#### Cohort Criteria
The patients for this study would have the following criteria:

* female or male aged 18 years or older
* have a Encounter record representing a hospitalization with an initial diagnosis of Acute Coronary Syndrome where the patient was discharged alive some time between September 2020 to September 2021 :
  * ACS is represented for this scenario one of these ICD 10 codes (I21 Acute myocardial infarction; I20-I25  Ischemic heart diseases; I24  Other acute ischemic heart diseases)
  * the Encounter diagnosis will point to a Condition with one of those codes
  * the Encounter will have hospitalization information included
  * the Encounter hospitalization discharge disposition code is not 'exp' (expired)
* have been given one of ticagrelor, prasugrel or clopidogrel after the date of diagnosis of ACS (as represented by the Condition or Encounter record found above)

|Drug Name|Brand Name|RxNorm CUI|
|---|---|---|
|ticagrelor|brilinta|1116632|
|prasurgrel|effient|613391|
|clopidogrel|plavix|32968, 687667, 153658|
{: .grid }

These criteria would be represented by the following queries:

    /Patient?birthdate=le2002-09-01&gender=male,female
    /Encounter?reason-code:below=I20,I21,I22,I23,I24,I25&date=ge2020-09-01&date=le2021-09-31&status=finished&dischargeDisposition:not=exp
    /MedicationAdministration?status=completed&effective-time=ge[Encounter-Start-Date]&
      code=http://www.nlm.nih.gov/research/umls/rxnorm|1116632,http://www.nlm.nih.gov/research/umls/rxnorm|613391,http://www.nlm.nih.gov/research/umls/rxnorm|32968,http://www.nlm.nih.gov/research/umls/rxnorm|687667,http://www.nlm.nih.gov/research/umls/rxnorm|153658

The patients that were common to all three queries would then form the set of patients representing this cohort.


#### Retrieved Data
For patients that meet the criteria above, the following data, as a minimum, would be retrieved:

* patient demographics
* all Medications from the date of initial diagnosis of ACS to 1 year after diagnosis date
* all Encounters from the date of initial diagnosis of ACS to 1 year after diagnosis date, including the outcomes of the Encounters
* all Conditions from the date of initial diagnosis of ACS to 1 year after diagnosis date, showing the status of the Conditions
* other relevant Medical History from the date of initial diagnosis of ACS to 1 year after diagnosis date
