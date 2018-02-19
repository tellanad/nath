({
	doInit : function(component, event, helper) {
		if (window.skuid) {
			component.isReady = true;
		}
		helper.loadSkuid(component);
	},
	loadedScripts : function(component, event, helper) {
		component.isReady = true;
		helper.loadSkuid(component);
		skuid.platform.set("SFUITheme", "Theme4d");
	}
	// eslint-disable-next-line semi
})