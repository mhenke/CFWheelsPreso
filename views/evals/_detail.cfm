<cfparam name="eval" default="" />
<cfparam name="eval.direction" default="" />
<cfparam name="eval.level" default="" />
<cfparam name="eval.next" default="" />
<cfparam name="eval.present" default="" />

<cfoutput>
	<div>
	#errorMessagesFor("eval")#
	</div>
	<div>
		<span>Your Name: #textField(objectName='eval', property='name')#</span>
		<span>Date: #dateTimeSelect(objectName='eval', property='date', dateOrder='year,month,day', monthDisplay='abbreviations')#</span>
	</div>
	<div>
		<span>Your Company: #textField(objectName='eval', property='company')#</span>
		<span>Email: #textField(objectName='eval', property='email')#</span>
	</div>
	
	<div>What was the overall quality of the event? 
		#select(objectName="eval", property="eventid", options=qualities, tagValue=qualities.id)#
	</div>
	
	<div>Were the directs to the facility clear? 
		#radioButtonTag(name="EVAL[direction]", label="Yes", value="1", labelPlacement="after",checked=iif(1 EQ eval.direction, de("true"), de("false")))#
		#radioButtonTag(name="EVAL[direction]", label="No", value="0", labelPlacement="after",checked=iif(0 EQ eval.direction, de("true"), de("false")))#
	</div>
	
	<div>How did you hear about this event?</div>
	<div>#select(objectName="eval", property="hear", options=hearList, multiple="true")#</div>
	
	<div>What is your level of experience with ColdFusion? 
		<cfloop list="#experienceList#" index="level">
		#radioButtonTag(name="EVAL[level]", label="#level#", value="#level#", labelPlacement="after",checked=iif(level EQ eval.level, de("true"), de("false")))#
		</cfloop>	
	</div>
	
	<div>Please evaluate our speakers on a scale of 1 to 10 (1 means very poor, 10 means fabulous)</div>
	<div>#textField(objectName='eval', property='speaker')#</div>
	
	<div>What was the overall quality of the speakers? 
		<cfloop query="qualities">
		#radioButton(objectName="eval", property="speakerid", label=qualities.level, tagValue=qualities.id, labelPlacement="after")#
		</cfloop>
	</div>
	
	<div>Based on your experience today, do you plan to attend next meetings?
		 	#radioButtonTag(name="EVAL[next]", label="Yes", value=1, labelPlacement="after",checked=iif(1 EQ eval.next, de("true"), de("false")))#
			#radioButtonTag(name="EVAL[next]", label="No", value=0, labelPlacement="after",checked=iif(0 EQ eval.next, de("true"), de("false")))#
	 </div>
	 
	<div>Would you be willing to present a topic at a meeting in the future?
			#radioButtonTag(name="EVAL[present]", label="Yes", value=1, labelPlacement="after",checked=iif(1 EQ eval.present, de("true"), de("false")))#
			#radioButtonTag(name="EVAL[present]", label="No", value=0, labelPlacement="after",checked=iif(0 EQ eval.present, de("true"), de("false")))#
	</div>
	
	<div>#autoLink("If yes, please contact Michael Smith at michael@teratech.com")#</div>
	
	<div>Do you have any comments on today's meeting or suggestions for future events or topics</div>
	<div>
		#textArea(objectName='eval', property='comments',cols='40',rows='5')#
	</div>
	
	<div>I am interested in:</div>
	<div>#checkBox(objectName="eval", property="interest1", label="Using ColdFusion consultant services at my company",labelPlacement="after")#</div>
	<div>#checkBox(objectName="eval", property="interest2", label="On-site training at my company",labelPlacement="after")#</div>
	<div>#checkBox(objectName="eval", property="interest3", label="A presentation on this subject",labelPlacement="after")# #textField(objectName="eval", property="interest4")#</div>
</cfoutput>