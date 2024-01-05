Profile: IDMPDocumentReference
Parent: DocumentReference
Id: idmp-documentreference
Title: "IDMP DocumentReference"
Description: "Profile of the DocumentReference resource for representing professional information and patient information as attachments."
* . ^short = "IDMP DocumentReference"

* status

* type ^short = "Professional information or patient information"
* type 1..
* type.coding 1..
* type.coding ^slicing.discriminator[+].type = #value
* type.coding ^slicing.discriminator[=].path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains 
    Swissmedic 0..1
* type.coding[Swissmedic] 
* type.coding[Swissmedic].system 1..
* type.coding[Swissmedic].system = $Swissmedic-AttachedDocumentTypeVS
* type.coding[Swissmedic].code 1..

* content.attachment.url 1..
