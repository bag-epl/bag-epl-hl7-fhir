Extension: CHIDMPAuthorizedDoseForm
Id: authorizedDoseForm
Title: "IDMP Authorized Dose Form"
Description: "Extension for representing the authorized dose form"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only CodeableConcept
* value[x] from ChSwissmedicAuthorisedPharmaceuticalDoseFormVS (required)
* value[x].coding 1..
* value[x].coding ^slicing.discriminator[+].type = #value
* value[x].coding ^slicing.discriminator[=].path = "system"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains 
    Swissmedic 0..1
* value[x].coding[Swissmedic].system 1..
* value[x].coding[Swissmedic].system = $edqm
* value[x].coding[Swissmedic].code 1..

//Extensions EPL FOPH
//Extension: EPLLimitation
//Id: ch-epl-limitation
//Title: "CH - EPL Limitation"
//Description: "Extension for representing the limitations used by FOPH"
//* ^context[0].type = #element
//* ^context[=].expression = "MedicinalProductDefinition"

//* value[x] only boolean

Extension: EPLFullLimitationText
Id: fullLimitationText
Title: "CH - EPL Full Limitation Text"
Description: "Extension for representing the full wording of the limitations used by FOPH"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only string

// Extensions for Limitation Status
Extension: EPLLimitationStatus
Id: limitationStatus
Title: "EPL Limitation Status"
Description: "Extension for representing the limitation status"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only CodeableConcept
* value[x] from ChEplLimitationStatusVS (required)
* value[x].coding 1..
* value[x].coding ^slicing.discriminator[+].type = #value
* value[x].coding ^slicing.discriminator[=].path = "system"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains 
    Swissmedic 0..1
* value[x].coding[Swissmedic].system 1..
* value[x].coding[Swissmedic].system = $ePL-LimitationStatusCS
* value[x].coding[Swissmedic].code 1..

Extension: EPLLimitationStatusDate
Id: limitationStatusDate
Title: "CH - EPL Limitation Status Date"
Description: "Extension for representing the date the limitation status was assigned used by FOPH"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only dateTime

Extension: EPLLimitationStartDate
Id: limitationStartDate
Title: "CH - EPL Limitation Start Date"
Description: "Extension for representing the date the limitation started by FOPH"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only dateTime

Extension: EPLLimitationEndDate
Id: limitationEndDate
Title: "CH - EPL Limitation End Date"
Description: "Extension for representing the date the limitation ended by FOPH"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only dateTime

Extension: EPLReimbursementExpiryDate
Id: reimbursementExpiryDate
Title: "CH - EPL Reimbursement Expiry Date"
Description: "Extension for representing the expirydate of reimbursement by FOPH"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only dateTime

Extension: EPLDateOfFirstLimitation
Id: dateOfFirstLimitation
Title: "CH - EPL Date of First Limitation"
Description: "Extension for representing the date when a limitation was asigned for the first time by FOPH"
* ^context[0].type = #element
* ^context[=].expression = "MedicinalProductDefinition"

* value[x] only dateTime