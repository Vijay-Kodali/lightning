/*({
	myAction : function(component, event, helper) {
		
	}
})*/

({
    locationChange : function(component, event, helper) {
        var token = event.getParam("token");
        if(token !=undefined){
        if (token.indexOf('contact/') === 0) {
            var contactId = token.substr(token.indexOf('/') + 1);
            var action = component.get("c.findById");
            action.setParams({
              "contactId": contactId
            });
            action.setCallback(this, function(a) {
                component.set("v.contact", a.getReturnValue());
            });
            $A.enqueueAction(action);
        }
        }
    }
})