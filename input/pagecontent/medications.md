FHIR has multiple core resources for exchanging Medication information.  The [main use cases](http://hl7.org/fhir/medications-module.html#intro) of the Medication resources concern the workflow of ordering, dispensing, and administering.  This results in a set of resources that have to be queried as a whole if trying to determine what medications an individual patient is currently taking.

#### Workflow Resources

|**Resource**|**Description**|**Use**|
|---|---|---|
|MedicationRequest|This resource represents an instruction for the supply and administration of medication to a patient.  It is used in both the inpatient (hospital) and community setting.  The 'intent' data element indicates whether the request is a plan ('proposal' or 'plan') or an actual order ('order'). | Armed with only a MedicationRequest with an intent of 'order', no actual statement of use is being made.  It can be inferred in a community setting that the patient had the order supplied and started taking the medication as instructed.  However, other resources are needed to confirm those inferences.  A MedicationRequest with a non-order intent is just a statement of planned usage and SHOULD not be used to infer actual usage. |
|MedicationDispense|This resource represents the details of a supply event where medication has been provided to a patient.  This usually happens in response to a MedicationRequest order but that is not required.| When a 'completed' MedicationDispense record is present, it is now known that a patient has received the medication.  This provides the next level of confidence in inferring that a patient has taken medication but it is still not an actual statement of use.  Knowing that the patient has the medication, it can be inferred that the patient is taking it as instructed. |
|MedicationAdministration|This resource represents an actual administration of medication to a patient.  It is principally used within care settings but is rarely found in outpatient settings.|This resource is definitive knowledge that actual administration of a medication took place.  It is an actual statement of use. |
|MedicationStatement|This is a record of use of a medication.  It is commonly used for recording non-prescription and/or recreational drugs.  It is also used when a patient states what medications they are taking, i.e. upon admission to a hospital or when asserting a set of active medications.|These statements are records of use but they may have limited information in them, i.e. no dosage or comprehensive dates, and the source of the statements need to be taken into account.|
{: .grid }

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:0px" width="1000px" src="medication_reliability.png" alt="Diagram showing different medication resources"/>
  <figcaption>Figure 1 - Medication Resource Information</figcaption>
</figure>
{::options parse_block_html="true" /}
