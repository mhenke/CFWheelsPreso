<h3>Editing eval</h3>

<cfoutput>
	#startFormTag(action="update", key=params.key)#
		#includepartial("detail")#
		#submitTag()#
	#endFormTag()#
#linkTo(text="Return to the listing", action="index")#
</cfoutput>
