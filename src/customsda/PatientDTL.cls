Class customsda.PatientDTL Extends Ens.DataTransformDTL [ DependsOn = (customsda.PatientMap.Record, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='customsda.PatientMap.Record' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<assign value='source.FirstName' property='target.{Patient.Name.GivenName}' action='set' />
<assign value='source.LastName' property='target.{Patient.Name.FamilyName}' action='set' />
<assign value='source.NamePrefix' property='target.{Patient.Name.NamePrefix}' action='set' />
<assign value='source.NameSuffix' property='target.{Patient.Name.NameSuffix}' action='set' />
<assign value='source.MaidenName' property='target.{Patient.Name.MiddleName}' action='set' />
<assign value='source.PatientId' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='"SYNTHEA"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='"SYNTHEA"' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.Race' property='target.{Patient.Race.Code}' action='set' />
<assign value='"SYNTHEA"' property='target.{Patient.Race.SDACodingStandard}' action='set' />
<assign value='source.Ethnicity' property='target.{Patient.EthnicGroup.Code}' action='set' />
<assign value='source.SSN' property='target.{Patient.PatientNumbers(2).Number}' action='set' />
<assign value='"SYNTHEA"' property='target.{Patient.EthnicGroup.SDACodingStandard}' action='set' />
<assign value='source.Gender' property='target.{Patient.Gender.Code}' action='set' />
<assign value='"SYNTHEA"' property='target.{Patient.Gender.SDACodingStandard}' action='set' />
<assign value='source.BirthDate' property='target.{Patient.BirthTime}' action='set' />
<assign value='source.BirthPlace' property='target.{Patient.BirthPlace.Street}' action='set' />
<assign value='source.Address' property='target.{Patient.Addresses(1).Street}' action='set' />
<assign value='source.City' property='target.{Patient.Addresses(1).City.Code}' action='set' />
<assign value='source.State' property='target.{Patient.Addresses(1).State.Code}' action='set' />
<assign value='source.County' property='target.{Patient.Addresses(1).County.Code}' action='set' />
<assign value='source.ZipCode' property='target.{Patient.Addresses(1).Zip.Code}' action='set' />
<assign value='"SSN"' property='target.{Patient.PatientNumbers(2).NumberType}' action='set' />
</transform>
}

}
