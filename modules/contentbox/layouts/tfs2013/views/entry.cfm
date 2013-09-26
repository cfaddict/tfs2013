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
	#cb.event("cbui_preEntryDisplay")#

	<!--- top gap --->
	<div class="post-top-gap"></div>

	<!--- Quickly reuse our entry template to build this one with some extra pizzaz --->
	#cb.quickEntry(args={addComments=true})#

	<!--- facebook social && comments --->
	<hr/>
	<div class="fb-like" data-href="http://www.toysforshots.com#cgi.path_info#" data-width="625" data-show-faces="true" data-send="true"></div>
	<div class="fb-comments" data-href="http://www.toysforshots.com#cgi.path_info#" data-width="625"></div>

	#cb.event("cbui_postEntryDisplay")#
</cfoutput>