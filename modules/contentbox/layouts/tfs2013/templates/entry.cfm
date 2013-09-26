<!---
/**
********************************************************************************
ContentBox - A Modular Content Platform
Copyright 2012 by Luis Majano and Ortus Solutions, Corp
www.gocontentbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
********************************************************************************
*/
--->
<cfoutput>
<div class="post" id="post_#entry.getContentID()#">

	<div class="post-header">
		<h1 class="post-title"><a href="#cb.linkEntry(entry)#" title="#entry.getTitle()#">#entry.getTitle()#</a></h1>
		<div class="metadata">
			Created on #dateFormat(entry.getDisplayPublishedDate(),'mm/dd/yyyy')# at #timeFormat(entry.getDisplayPublishedDate(),'hh:mm tt')# |
			by #entry.getAuthorName()# |
			in <cfif entry.hasCategories()>#cb.quickCategoryLinks(entry)#</cfif>
		</div>
	</div>

	<div class="post-content">
		<cfif entry.hasExcerpt() and cb.isIndexView()>
			#entry.getExcerpt()#
			<div class="post-more" align="right">
				<a href="#cb.linkEntry(entry)#" title="Read The Full Entry!"><button class="btn btn-primary">Read More...</button></a>
			</div>
		<cfelse>
			<!--- Don't get the content, render the content --->
			#entry.renderContent()#
		</cfif>
	</div>



</div>
</cfoutput>