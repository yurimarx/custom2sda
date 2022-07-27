Class customsda.CustomToSDAProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="customsda.CustomToSDAProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="PatientSDAOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/data/</Setting>
  </Item>
  <Item Name="PatientProcess" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">customsda.PatientRuleRouter</Setting>
  </Item>
  <Item Name="PatientCSVService" Category="" ClassName="EnsLib.RecordMap.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/data/</Setting>
    <Setting Target="Adapter" Name="FileSpec">patients.csv</Setting>
    <Setting Target="Host" Name="TargetConfigNames">PatientProcess</Setting>
    <Setting Target="Host" Name="RecordMap">customsda.PatientMap</Setting>
  </Item>
</Production>
}

}
