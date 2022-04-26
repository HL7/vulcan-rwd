### Study of Acute Coronary Syndromes with Percutaneous Coronary Intervention and optimal antiplatelet therapy

#### Identify Cohort

Identify patients with Acute Coronary Syndrome (ICD 10 -  I21 Acute myocardial infarction; I20-I25  Ischemic heart diseases; I24  Other acute ischemic heart diseases)

* Patient
	* Identifier
	*	Birth Date
	*	Gender
	*	Death Flag
* Diagnosis
	* Diagnosis Code (from ICD-10 or SNOMED CT)
	* Date
	* Confirmation Flag
	* Diagnosis Type (discharge, admitting, chief complaint)
* Lab Test
	* Test Code (from LOINC)
	* Date
	* Value
	* Interpretation (high, low, abnormal)
* ECG/EKG Tests
	* Test Code (from LOINC)
	* Date
	* Value
	* Interpretation


#### Identify condition under study

Identify those who have percutaneous coronary intervention (ICD-10 PCS 02703ZZ plus p. 2-8 AHRQ defined codes)

* Procedure
	* Procedure Code (from ICD-10, PCS)
	* Date
	* Outcome

##### Of those identify those on ticagrelor, prasugrel or clopidogrel and other antiplatelets

* Medication
	* Drug Code (from source???)
	* Administration Dates
	* Order Dates
	* Dosing Information


#### Identify concomitant medications

Collect concomitant medications from the same period (1 month prior to event to 18 months post event)

* Medication
	* Drug Code (from source???)
	* Administration Dates
	* Order Dates
	* Dosing Information
	* Reason for admnistration


#### Retrieve study data points

Collect age, medical history,
And from those we could either retrieve:
Of those, collect any events - death, stroke, myocardial infarction, hospitalization (Major Adverse Cardiovascular Events) and major bleeding events (defined as bleeding requiring 2 units of packed red blood cells)

* Medical History (see IPS for a general answer of what comprises a medical history summary)
	* Questions asked
	* Answers to the questions (some will be specific data elements, some will be text answers)
* Vital Signs
	* Type Code (from LOINC)
	* Date
	* Value
* Hospitalization
	* Admit Date
	* Discharge Date
	* Hospitalization Reason
	* Details
* Transfusion
	* Product Code (from ICBBAA)
	* Date
	* Amount
* Condition
	* Condition Code (from ICD-10 or SNOMED CT)
	* Date Entered
	* Confirmation Flag


#### Example Study

Example study ClinicalTrials.gov Identifier: NCT02190123 (https://clinicaltrials.gov/ct2/show/NCT02190123) others - entire query
