<cfoutput>
#html.docType()#
<html lang= "en">
<head>
	#cb.quickView("_head")#

	<link href="#cb.layoutRoot()#/includes/css/lightbox.css" rel="stylesheet" />
	<script src="#cb.layoutRoot()#/includes/js/lightbox-2.6.min.js"></script>
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
				<div class="span8">
					#cb.mainView()#
				</div>
				<div class="span4" align="center">
					#cb.quickView("_sidebar")#
				</div>				
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