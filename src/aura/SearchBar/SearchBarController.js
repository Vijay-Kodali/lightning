/*({
	myAction : function(component, event, helper) {
		
	}
})
*/
({
    searchKeyChange: function(component, event, helper) {
        var myEvent = $A.get("e.c:SearchKeyChange");
        myEvent.setParams({"searchKey": event.target.value});
        myEvent.fire();
    }
})