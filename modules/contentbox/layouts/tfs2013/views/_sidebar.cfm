<cfoutput>
	<div class="sidebar">

	#cb.event("cbui_BeforeSideBar")#

	<h4>Categories</h4>
	<div class="bg"></div>
		
	<!--- 
		Display Categories using ContentBox collection template rendering
		the default convention for the template is "category.cfm" you can change it via the quickCategories() 'template' argument.
		I could have done it manually, but again, why?
	 --->
	#cb.quickCategories()#

	<br/>

	<h4>Recent Entries</h4>
	<div class="bg"></div>
	#cb.widget('RecentEntries')#

	<h4>Archives</h4>
	<div class="bg"></div>
	#cb.widget("Archives")#

	<!--- RSS Buttons --->
	<h4>Links</h4>
	<ul>
		<li><a href="#cb.linkRSS()#" target="_blank">RSS Feed</a></li>
	</ul>

	#cb.event("cbui_afterSideBar")#

	</div>
</cfoutput>