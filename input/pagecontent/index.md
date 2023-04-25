### Overview
In the context of clinical research, Real World Data (RWD) are data created in the “real world” of everyday experience, such as a routine patient visit to a healthcare provider, as opposed to data created under clearly defined protocols typical of controlled clinical trials. The primary purpose for such data, collected for a purpose other than use in a clinical trial, is in support of clinical care of patients and knowledge for their healthcare providers. However, large amounts of such information could potentially be used for the secondary purpose of supporting clinical research to analyze the data and generate supporting evidence for, as an example, a new indicated use for an already approved pharmaceutical drug or safety-related analyses.  The identification of outcomes, safety signals, or other research/regulatory insights demonstrated with the use of RWD is commonly called Real World Evidence (RWE). 

### Current Scope
The main goal of this FHIR Implementation Guide is to help define a minimal set of clinical research FHIR resources and elements in an EHR that can be utilized in an interoperable and consistent manner for clinical research objectives (e.g., academic, regulatory, etc.). This Guide defines FHIR profiles that can be used in an EHR setting to represent data that will be supportive of RWD research needs and also to retrieve relevant research data from Real World Data (RWD) sources to facilitate downstream use (directly or after transformation) for submissions to pharmaceutical regulatory agencies.  The downstream use of retrieved data is not covered in this guide but separate efforts exist to give advice for such use (for example, the [FHIR to CDISC Joint Mapping Implementation Guide](http://hl7.org/fhir/uv/cdisc-mapping/)).

Many sources of RWD exist, but for the current phase of work, the scope of this Implementation Guide is limited to the use of Electronic Health Record (EHR) systems as sources of RWD. The intent is for future iterations of the Implementation Guide to have a wider scope of RWD such as from Registries, Payer systems, and HIEs.  Additionally, our focus is currently limited to the use of EHR data for retrospective analysis of data which already exists as part of normal healthcare encounters - not data created as part of prospective clinical studies.

We are very aware that the use of EHRs as a mode of direct data collections for traditional prospective clinical trials (sometimes called “electronic source data” or “eSource” activities) is also of great interest. While this is not currently in scope of this implementation guide, we consider it highly likely that types of solutions developed for eSource and for RWD will have significant overlap.

This guide is dependent on the International Patient Access (IPA) project for a baseline dataset from which to build its profiles. IPA provides a mechanism for application to access patient information and provides a base set of profiles that are in line with the requirements of the RWD guide.  The profiles built will detail the data elements that are needed for conveying data needed for clinical research.  IPA was chosen over a regional guide like US Core because it is a more generalized representation of data and has less constraints than regional guides.  To that end, a guide that bases itself on IPA will be more highly interoperable but can be further constrained to be in line with a regional guide like US Core, Australia Core, or Canadian Core.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:0px" src="rwd_conceptual_application.png" alt="Diagram showing relationship between IPS, this guide, and other specific guides"/>
  <figcaption>Figure 1 - Real World Data Conceptual Application</figcaption>
</figure>
{::options parse_block_html="true" /}

[This page](references.html) has more information on the relationship between this guide and other foundational guides.

This guide defines the FHIR building blocks to meet use cases which will eventually mature the minimal set of common resources and elements.  It is being developed using an iterative use case approach, identifying the minimal set of EHR-based information needed to answer a small set of research questions and creating a set of FHIR profiles for representing this needed information in an EHR, then repeating the process with a new question.  As more use cases are considered, more common resources and elements will be added to the guide.  It provides an opportunity to help establish future US Core, Australia Core, Japan Core, etc. as they wish to scale their guides and profiles.  The mappings to achieve different outcomes are dependent on other projects (eg. FHIR to CDISC, FHIR to OMOP, etc.).  A different Vulcan project is exploring the [FHIR to OMOP mappings](https://confluence.hl7.org/display/VA/FHIR+to+OMOP).

#### How to use with Jurisdictional Guides
The profiles that are defined in this guide indicate, using the Must-Support designation, the FHIR data elements that are of importance in retrieving real world data from an EHR.  They can be combined with jurisdiction-specific guides like US Core or Canadian Baseline to create the superset of data elements that an EHR **SHOULD** support in order to be compliant with this guide.  In some instances, the data elements identified in this guide are completely supported by the jurisdictional profile.

As an example, the RWD Condition profile indicates the following data elements must be supported:

* category
* code
* encounter
* recordedDate
* onset[x]
* clinicalStatus
* verificationStatus

The US Core Encounter Diagnosis profile on Condition has all of those data elements as must support, therefore an EHR that is compliant with US Core will be able to handle the requirements imposed by this guide.  The Canadian Baseline Condition profile has clinicalStatus, code, and onset[x] as must support.  An EHR that is compliant with Canadian Baseline would need to support in addition category, verificationStatus, and encounter to be compliant with this guide.

It is expected that jurisdiction-specific versions of this guide would be created to express the combination of requirements imposed by the jurisdiction and this guide.


### Approach
The Vulcan Real World Data project determined that there are two phases to requesting data from an EHR:

1. Determine patients based on inclusion and exclusion criteria
2. Retrieve healthcare data for a specific patient 

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:0px" src="rwd_in_scope.png" alt="Diagram showing what is in scope for the RWD IG"/>
  <figcaption>Figure 2 - What is in scope of the Real World Data Guide?</figcaption>
</figure>
{::options parse_block_html="true" /}


#### Cohort Building
The first phase is building a cohort by querying for patients based on a set of inclusion and exclusion critieria.  Although these criteria may be represented as FHIR objects, this guide does not include a process from converting the criteria expressed as FHIR instances into queries against an EHR.  Instead it presumes that the needed healthcare data is known by the requesting software in some manner.  In this phase, a number of queries are made against an EHR to narrow down the set of patients to those who meet the research study criteria.  A set of patient identifiers is retrieved and becomes input into the next phase of requesting data.  NOTE: This phase may not be necessary if the set of patients is already known for a study.  If the proper patient identifiers are known, it is possible to skip this phase and go directly to retrieving healthcare data for the known patients.  For more information about this phase, see [Cohort Building Phase](patients.html).

#### Retrieve Healthcare Data
After specific patients have been determined, the next phase is to retrieve their healthcare data.  This guide inherits from the International Patient Access and uses the IPA as the means to transfer healthcare data.

The sections in the IPA around [Gaining Access to a Patient Record](http://hl7.org/fhir/uv/ipa/access.html) and [Finding and Retrieving Patient Information](http://hl7.org/fhir/uv/ipa/fetching.html) detail how healthcare data can be retrieved.  This guide lists specific search parameters needed to find healthcare data for a specific patient and it lists the specific resources and data elements that have been deemed important to return for the purposes of research.  The CTMS or a downstream agent will make all of the queries and will then package all of the returned information into the Study-Enhanced IPS.  For information on the needed queries, see [Individual EHR Queries](healthdata.html).

### Technical Considerations
To properly implement this guide, there are a set of technical considerations besides the specific queries and profiles defined.  See [Technical Considerations](technical.html) for more details.
