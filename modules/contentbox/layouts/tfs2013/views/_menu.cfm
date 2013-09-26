<div class="row">
	<div id="navigation" class="span12">
		<ul>
			<cfoutput>#cb.rootMenu(type="li")#</cfoutput>
			<li class="<cfif event.getCurrentHandler() EQ 'contentbox-ui:blog'>active</cfif>"><a href="/blog">Blog</a></li>
		</ul>
	</div>
</div>