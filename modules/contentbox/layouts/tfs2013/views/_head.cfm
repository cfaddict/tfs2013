<cfoutput>
   <!--- Site Title or Page Title --->
	<title>
		<cfif cb.isPageView()>
			#cb.getCurrentPage().getTitle()#
		<cfelse>
			#cb.siteName()# - #cb.siteTagLine()#
		</cfif>
	</title>
	<!--- Met Tags --->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="generator" 	 content="ContentBox powered by ColdBox" />
	<meta name="robots" 	 content="index,follow" />
	<!--- Meta Description By Page or By Site --->
	<cfif cb.isPageView() AND len(cb.getCurrentPage().getHTMLDescription())>
		<meta name="description" content="#cb.getCurrentPage().getHTMLDescription()#" />
	<cfelse>
		<meta name="description" content="#cb.siteDescription()#" />
	</cfif>
	<!--- Meta Keywords By Page or By Site --->
	<cfif cb.isPageView() AND len(cb.getCurrentPage().getHTMLKeywords())>
		<meta name="keywords" 	 content="#cb.getCurrentPage().getHTMLKeywords()#" />
	<cfelse>
		<meta name="keywords" 	 content="#cb.siteKeywords()#" />
	</cfif>

	<!--- Base HREF for SES enabled URLs --->
	<base href="#cb.siteBaseURL()#" />

	<!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
	<!--- RSS Discovery If In View Mode --->
	<cfif cb.isPageView()>
		<link rel="alternate" type="application/rss+xml" title="Pages's Recent Comments" href="#cb.linkPageRSS(comments=true,page=cb.getCurrentPage())#" />
	</cfif>

	<!--- styles --->
	<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz&subset=latin' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
	<link href="#cb.layoutRoot()#/includes/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="#cb.layoutRoot()#/includes/css/stylesheet.css" rel="stylesheet" type="text/css" />

	<!--- javascript --->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/bootstrap.min.js"></script>--->
	<script type="text/javascript">
		$(function() {
			$('.carousel').carousel();
		});
	</script>

	#cb.event("cbui_beforeHeadEnd")#
</cfoutput>