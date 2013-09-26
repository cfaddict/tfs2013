component implements="coldbox.system.aop.MethodInterceptor" {

	property name="log" inject="logbox:logger:{this}";

	public any function init(required boolean logResults="true") {
		instance = {
			logResults = arguments.logResults
		};
		return this;
	}

	/**
	 * @output false
	 */
	public any function invokeMethod(required invocation) {
		var refLocal = {};

		var args = invocation.getArgs();
		var event = args.event;
		var rc = event.getCollection();
		var prc = event.getCollection(private = true);

		if(prc.currentRoutedUrl.endsWith("/") && structKeyExists(rc, "format")) {
			prc.currentRoutedUrl = left(prc.currentRoutedUrl, len(prc.currentRoutedUrl) - 1) & "." & rc.format;
		}

		refLocal.results = arguments.invocation.proceed();

		if( structKeyExists(refLocal,"results") ){
			return refLocal.results;
		}
    }
    
}