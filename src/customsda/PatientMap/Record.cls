/// RECORDMAP: Generated from RecordMap 'customsda.PatientMap'
/// on 2022-07-27 at 16:07:37.499 [2022-07-27 16:07:37.499 UTC]
/// by user _SYSTEM
Class customsda.PatientMap.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property PatientId As %String;

Property BirthDate As %String;

Property DeathDate As %String;

Property SSN As %String;

Property Drivers As %String;

Property Passport As %String;

Property NamePrefix As %String;

Property FirstName As %String;

Property LastName As %String;

Property NameSuffix As %String;

Property MaidenName As %String;

Property MaritalStatus As %String;

Property Race As %String;

Property Ethnicity As %String;

Property Gender As %String;

Property BirthPlace As %String(MAXLEN = 200);

Property Address As %String(MAXLEN = 200);

Property City As %String(MAXLEN = 200);

Property State As %String(MAXLEN = 200);

Property County As %String(MAXLEN = 200);

Property ZipCode As %String;

Property Lat As %String;

Property Lon As %String;

Property HealthcareExpenses As %String;

Property HealthcareCoverage As %String;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PatientId</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>DeathDate</Value>
</Value>
<Value name="5">
<Value>SSN</Value>
</Value>
<Value name="6">
<Value>Drivers</Value>
</Value>
<Value name="7">
<Value>Passport</Value>
</Value>
<Value name="8">
<Value>NamePrefix</Value>
</Value>
<Value name="9">
<Value>FirstName</Value>
</Value>
<Value name="10">
<Value>LastName</Value>
</Value>
<Value name="11">
<Value>NameSuffix</Value>
</Value>
<Value name="12">
<Value>MaidenName</Value>
</Value>
<Value name="13">
<Value>MaritalStatus</Value>
</Value>
<Value name="14">
<Value>Race</Value>
</Value>
<Value name="15">
<Value>Ethnicity</Value>
</Value>
<Value name="16">
<Value>Gender</Value>
</Value>
<Value name="17">
<Value>BirthPlace</Value>
</Value>
<Value name="18">
<Value>Address</Value>
</Value>
<Value name="19">
<Value>City</Value>
</Value>
<Value name="20">
<Value>State</Value>
</Value>
<Value name="21">
<Value>County</Value>
</Value>
<Value name="22">
<Value>ZipCode</Value>
</Value>
<Value name="23">
<Value>Lat</Value>
</Value>
<Value name="24">
<Value>Lon</Value>
</Value>
<Value name="25">
<Value>HealthcareExpenses</Value>
</Value>
<Value name="26">
<Value>HealthcareCoverage</Value>
</Value>
<Value name="27">
<Value>BirthDate</Value>
</Value>
</Data>
<DataLocation>^customsda.PatientMap.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^customsda.PatientMap.RecordD</IdLocation>
<IndexLocation>^customsda.PatientMap.RecordI</IndexLocation>
<StreamLocation>^customsda.PatientMap.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

Parameter RECORDMAPGENERATED = 1;

}
