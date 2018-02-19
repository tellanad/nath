({
    //Get the url video saved in app builder
    doInit : function(component, event, helper) {   
        var URL = component.get("v.urlVideo");
        URL = helper.embedVideo(URL);
        component.set('v.urlVideo',URL); 

        var height = component.get("v.heightVideo");
        height = helper.heightVideo(height);
        component.set("v.heightVideo", height);

        var iframeHtml = '<iframe id="okty_video" type="text/html" src="' 
        		+ URL + '" width="100%" height="' + height + '" frameBorder="0" allowfullscreen/>';
        component.set('v.iframeHtml', iframeHtml);
	}
})