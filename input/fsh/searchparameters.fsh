Instance: ObservationInterpretationSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* name = "Interpretation"
* status = #active
* description = "A search parameter to allow searching for Observations with specific interpretations."
* code = #interpretation
* base = #Observation
* type = #token
* expression = "Observation.interpretation"

Instance: ProcedureOutcomeSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* name = "Outcome"
* status = #active
* description = "A search parameter to allow searching for Procedures with specific outcomes."
* code = #outcome
* base = #Procedure
* type = #token
* expression = "Procedure.outcome"
