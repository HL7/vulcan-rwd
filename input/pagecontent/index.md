## Real World Data

This FHIR Implementation Guide defines FHIR profiles that can be used to retrieve relevant research data from Real World Data (RWD) sources – specifically Electronic Health Record (EHR) systems - and ultimately transform that data into a format suitable for submission to pharmaceutical regulatory agencies. 
It is dependent on the International Patient Summary (IPS) project for a baseline dataset from which to build this profiles. The profiles built will enhance the IPS profiles for the purposes of conveying data needed for clinical research.  The destination format currently being used for this project is the SDTM (Study Data Tabulation Model) standard, created by the Clinical Data Interchange Standards Consortium (CDISC) standards development organization, which is optimized for clinical research and regulatory uses and is the data standard used for regulatory submissions of study data to the US Food and Drug Administration.  The intent is for future iterations of the Implementation Guide to have a wider scope of RWD such as from Registries, Payer systems, and HIEs.

### Overview
Real World Data  can be considered data created in the “real world” of everyday experience, such as a routine patient visit to a healthcare provider, as opposed to data created under clearly defined protocols typical of controlled clinical trials.  The primary purpose for such data, collected for a purpose other than use in a clinical trial, is in support of clinical care of patients and knowledge for their healthcare providers.  However, large amounts of such information could potentially be used for the secondary purpose of supporting clinical research to analyze the data and generate supporting evidence for, as an example, a new indicated use for an already approved pharmaceutical drug or safety-related analyses. 

Many sources of RWD exist, but for the current phase of work, the scope of this Implementation Guide is firmly limited to the use of Electronic Health Record (EHR) systems as sources of RWD.  Additionally, our broad use case is currently limited to the use of EHRs for retrospective analysis of data (to generate evidence for new indications, comparisons, and/or safely) and preparation of such data for submission to governmental regulatory bodies covering pharmaceutical approvals such as the United States Food and Drug Administration (FDA).  The use of EHRs as a mode of direct data collections for traditional prospective clinical trials (sometimes called “electronic source data” or “eSource” activities) is not currently in scope.  However, we consider it highly likely that types of solutions developed for eSource and for RWD will have significant overlap. 

The main goal of this FHIR IG is to be able to demonstrate how HL7 FHIR will be able to directly support clinical research and regulatory uses.  The challenges (also opportunities) can be summed up as: How, with the aide of HL7 FHIR, how can we most efficiently and comprehensively migrate data and bridge the many syntactic and semantic gaps from the healthcare data sphere to the research and regulatory sphere?

### Data Sharing Considerations
#### Communication with EHRs
How will we receive FHIR data from the EHR?
	- receive a data dump and do queries on that data?
		- getting refreshes periodically?
	- able to query an EHR multiple times?
	- able to query an EHR once to get data for a specific patient?
	- EHR push the data to a CTMS

#### Patient Consent to Share Data
EHRs will be gathering Patient consent and they will share what data they can.
