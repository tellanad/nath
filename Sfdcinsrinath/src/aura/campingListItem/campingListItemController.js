({
	 packItem : function (component, event, helper)
    {
        
        var btn = event.getSource();
        var btnMessage = btn.get("v.label");
        component.set("v.item" , btnMessage);
        var btnClicked = event.getSource();
        btnClicked.set("v.disabled" , "TRUE");
    }

})