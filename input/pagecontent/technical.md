### Representing Absent and Not Known Data

When a source system supports the extended IPS request, the returned FHIR document will have sections that are required to be returned.  When those sections do not contain any data, there is some ambiguity as to whether there is no data because the patient does not have any instances of the data that is contained in that section, i.e. allergies or medications, or there is no data because the patient has not been explicitly asked.  Thus there is a need to indicate an explicit assertion of whether data is known to be absent or not is made.  The following sections are indicated as required and therefore must follow this rule:

* Medication Summary
* Problem List
* Diagnostic Results
* Allergies and Intolerances

The following sections are recommended and can either explicitly assert unknown or no known information as above or the section may just be omitted:

* Immunizations
* Medical Devices
* Vital Signs

NOTE: If a recommended or optional section is omitted, receivers SHALL not assume that no information is known but rather that it is unknown whether the patient has any information for that section.

### Must Support Element Rules

For the purposes of this implementation guide, a data element marked as MustSupport SHALL be interepreted as follows:

* Implementers creating content, either as a response to cohort building or to finding data:
  * SHALL be capable of including any data element marked as MustSupport
* Implements receiveing content, either as a response to cohort building or to finding data:
  * SHALL be capable of processing instances containing MustSupport elements without generating an error or causing the application to fail
	* SHOULD be capable of displaying MustSupport elements for human use or processing them for other purposes
	* SHALL be able to process instances containing MustSupport elements that are asserting missing information
	
#### Missing Data

##### Optional MustSupport Data Elements
If an implementer creating content does not have data to be included for optional data elements that are marked as MustSupport, they are allowed to omit the data.

##### Required MustSupport Data Elements
If an implementer creating content does not have data to be included for required data elements that are marked as MustSupport, they must include the element but are allowed to indicate that data is missing.  This can be done in one of two ways:

1. For non-coded data elements, use the Data Absent Reason extension.
2. For coded data elements with example, preferred, or extensible bindings:
  * use the text element if the source system has no coded data
	* use an appropriate exception code from the value set, if available
	* use a code from the Data Absent Reason code system
3. For coded data elements with required bindings, use the appropriate exception code from the value set

### Cross-Version Analysis
{% include cross-version-analysis.xhtml %}

### Intellectual Property Statements
{% include ip-statements.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IG Dependencies

This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}