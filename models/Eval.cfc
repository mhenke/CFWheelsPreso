<cfcomponent extends="Model">

	<!--- All initialization related tasks are done in the "init" function which is run the first time the model is requested. --->
	<cffunction name="init">
		<cfset belongsTo(name="quality", foreignKey="eventid")>
		<cfset validatesPresenceOf(properties="name,email,date")>
		<!--- isValid() function --->
		<cfset validatesFormatOf(property="email",type="email") />
	</cffunction>

</cfcomponent>
