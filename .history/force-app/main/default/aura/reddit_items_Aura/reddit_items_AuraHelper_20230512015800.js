({
    pullData : function(component) {
        component.set("v.isLoading", true);
        var action=component.get("c.buscarreddit_items");
        action.setCallback(this,function(e){
            component.set("v.isLoading", false);
            if(e.getState()=='SUCCESS'){
                var results=e.getReturnValue();
                if(results.length>0){
                    component.set('v.data', results);
                }
                else{
                    component.set('v.data', []);
                }
            }
            else{
                this.showToast("ERROR","error",JSON.stringify(e.getError()));
            }
        });
        $A.enqueueAction(action);
    },

    viewRecords : function(component,event){
        var row = event.getParam('row');
        var recordId = row.Id;
        var viewRec=$A.get("event.force:navigateToSObject");
        viewRec.setParams({
            "recordId": recordId,
            "slideDevName": "detail"
        });
        viewRec.fire();
    },

    editRecord : function(component,event){
        var row = event.getParam('row');
        var recordId = row.Id;
        
    }

})
