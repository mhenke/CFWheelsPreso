<h3>New eval</h3>

<cfoutput>
	#startFormTag(action="create")#

		#includepartial("detail")#
		
		#submitTag()#
		
	#endFormTag()#
	
	#linkTo(text="Return to the listing", action="index")#
</cfoutput>


