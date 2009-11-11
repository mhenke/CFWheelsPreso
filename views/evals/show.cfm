<script type="application/javascript">
window.onload= function(){
  DisableEnableForm(document.Form1,true);
}

function DisableEnableForm(xForm,xHow){
  objElems = xForm.elements;
  for(i=0;i<objElems.length;i++){
    objElems[i].disabled = xHow;
  }
}
</script>

<h3>Showing eval</h3>

<cfoutput>
	#startFormTag(action="create",id="Form1",name="Form1")#
		#includepartial("detail")#
	#endFormTag()#
	#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this eval", action="edit", key=eval.formid)#
</cfoutput>