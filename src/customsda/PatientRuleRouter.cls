/// 
Class customsda.PatientRuleRouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="customsda.CustomToSDAProduction">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="PatientCSVService"></constraint>
<constraint name="msgClass" value="customsda.PatientMap.Record"></constraint>
<when condition="1">
<send transform="customsda.PatientDTL" target="PatientSDAOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
