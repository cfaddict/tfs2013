<cfset handler = event.getCurrentHandler()>

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
#html.docType()#
<html lang= "en">
<head>
	#cb.quickView("_head")#
</head>
<body>

	#cb.event("cbui_afterBodyStart")#

	<div class="container">

		<div class="content-wrapper">

			<div class="row">
				<div id="header">
					<a href="#cb.linkHome()#"><img src="#cb.layoutRoot()#/includes/images/toysforshotslogo.jpg" width="220" class="logo"/></a>
				</div>
			</div>
			
			#cb.quickView("_menu")#

			#cb.event("cbui_beforeContent")#

			<div class="row">
				<div class="span12">#renderView()#</div>		
			</div>

			#cb.event("cbui_afterContent")#

		</div>

		<div id="footer" class="row">
			#cb.event("cbui_footer")#
			Please <a href="/contact">contact us</a> if you have any questions about the site, the event or the owner of this website</a>.
		</div>

	</div>

	#cb.event("cbui_beforeBodyEnd")#
</body>
</html>
</cfoutput>