<cfoutput>

	<h3>Listing evals</h3>
	<div id="demo">
		<table id="example" class="display" cellspacing="0" cellpadding="0" border="0" style="width: 800px;">
			<thead>
				<tr>
					<th align="left">Name</th>
					<th align="left">Email</th>
					<th align="left">Company</th>
					<th align="left">Date</th>
					<th align="left">Event Quality</th>
					<th align="left"/>
					<th align="left"/>
					<th align="left"/>
				</tr>
			</thead>
			<tbody>	
				<cfloop query="evals">
				<tr>
					<td align="left">#evals.name#</td>
					<td align="left">#evals.email#</td>
					<td align="left">#evals.company#</td>
					<td align="left">#evals.date#</td>
					<td align="left">#evals.eventid#</td>
					<td align="left">#linkTo(text='Show', action='show', key=evals.formid)#</td>
					<td align="left">#linkTo(text='Edit', action='edit', key=evals.formid)#</td>
					<td align="left">#linkTo(text='Delete', action='delete', key=evals.formid, confirm='Are you sure?')#</a></td>
				</tr>
				</cfloop>
			</tbody>
		</table>
	</div>

	<p>#linkTo(text="New eval", action="new")#</p>
</cfoutput>