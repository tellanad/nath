({
	handleAccessCode : function(component) {
		var action = component.get("c.getAuraRun");
		action.setParams({url:window.location.href});
		action.setCallback(this, function(action) {
			var result = action.getReturnValue();
			window.location.href = result;
		});
		/* global $A */
		$A.enqueueAction(action);
	}
	// eslint-disable-next-line semi
})