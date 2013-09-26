component {

    this.title        = "MediaFix";
    this.author       = "Dan Vega";
    this.webURL       = "";
    this.description  = "A Module to fix the media issues in contentbox";
    this.version      = "1";
  
  
  function configure(){

    binder.mapAspect("cronusCBHotFix").to("#moduleMapping#.aop.mediaService");
    binder.bindAspect(classes=binder.match().instanceOf("contentbox-ui.handlers.media"),methods=binder.match().methods("index"),aspects="cronusCBHotFix");

  }

}