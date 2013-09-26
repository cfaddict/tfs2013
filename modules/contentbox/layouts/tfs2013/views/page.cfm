<cfset pageTitle = cb.getCustomField( 'pageTitle',cb.getCurrentPage().getTitle() ) />

<cfoutput>
	
	#cb.event("cbui_prePageDisplay")#
	
	<h1>#pageTitle#</h1>	
	#cb.getCurrentPage().renderContent()#

	#cb.event("cbui_postPageDisplay")#

</cfoutput>