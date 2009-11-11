<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
	<header>
	#styleSheetLinkTag("demo_page,demo_table_jui,demo_table,site")#
	</header
	<body>
		<div id="fw_container">
			<div class="fw_content">
		
			<h1>MDCFUG Meeting Evaluation</h1>
	
			<h2>TeraTech, In</h2>
			<h2>405 E. Gude Drive, Suite ##207</h2>
			<h2>Rockville, MD 20850</h2>
			<h2>301-424-3903 fax:301-762-8186 email:#autoLink("michael@teratech.com")#</h2>
			
			<cfif flashkeyExists("error")>
			<div style="color:red;font-weight:bold;">
				#flash("error")#
			</div>
			</cfif>
			
			<cfif flashkeyExists("success")>
			<div style="color:green;font-weight:bold;">
				#flash("success")#
			</div>
			</cfif>
						
			#contentForLayout()#
			</div>
		</div>
	</body>
</html>
</cfoutput>