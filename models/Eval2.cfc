<cfcomponent extends="Model">

	<!--- All initialization related tasks are done in the "init" function which is run the first time the model is requested. --->
	<cffunction name="init">
		<cfset belongsTo(name="quality", foreignKey="eventid")>
	</cffunction>

</cfcomponent>
