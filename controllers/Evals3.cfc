<cfcomponent extends="Controller">	

	<cffunction name="init">
		<cfset filters(through="formSetup", except="list")>
	</cffunction>
	
	<cffunction name="formSetup">
		<!--- Find the record all --->
		<cfset qualities = model("Quality").findAll()>
		<!--- Create list of level of experience --->
		<cfset experienceList = "Expert,Advanced,Intermediate,Low">
		<cfset hearList = "Email,Another member,Adobe,Other">
	</cffunction>
	
	<!--- evals/index --->
	<cffunction name="index">
		<cfset evals = model("Eval").findAll()>
	</cffunction>

	<!--- evals/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset eval = model("Eval").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(eval)>
	        <cfset flashInsert(error="Eval #params.key# was not found")>
	        
	        <cftry>
	        	<cfset redirectTo(back=true)>
	        	
	        	<cfcatch type="Wheels.RedirectBackError">
	        		<cfset redirectTo(action="index")>
	        	</cfcatch>
	        </cftry>
	    </cfif>
			
	</cffunction>
	
	<!--- evals/new --->
	<cffunction name="new">
		<cfset eval = model("Eval").new()>
	</cffunction>
	
	<!--- evals/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset eval = model("Eval").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(eval)>
	        <cfset flashInsert(error="Eval #params.key# was not found")>
	       	
	       	<cftry>
	        	<cfset redirectTo(back=true)>
	        	
	        	<cfcatch type="Wheels.RedirectBackError">
	        		<cfset redirectTo(action="index")>
	        	</cfcatch>
	        </cftry>
	    </cfif>
		
	</cffunction>
	
	<!--- evals/create --->
	<cffunction name="create">
		<cfset eval = model("Eval").new(params.eval)>
		
		<!--- Verify that the eval creates successfully --->
		<cfif eval.save()>
			<cfset flashInsert(success="The eval was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the eval.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- evals/update --->
	<cffunction name="update">
		<cfset eval = model("Eval").findByKey(params.key)>
		
		<!--- Verify that the eval updates successfully --->
		<cfif eval.update(params.eval)>
			<cfset flashInsert(success="The eval was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the eval.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- evals/delete/key --->
	<cffunction name="delete">
		<cfset eval = model("Eval").findByKey(params.key)>
		
		<!--- Verify that the eval deletes successfully --->
		<cfif eval.delete()>
			<cfset flashInsert(success="The eval was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the eval.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
