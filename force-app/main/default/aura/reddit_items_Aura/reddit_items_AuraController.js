({
    init : function(component, event, helper) {
        var actions = [
            {label: 'Ver', name: 'view'},
            {label: 'Editar', name: 'edit'},
            {label: 'Borrar', name: 'delete'}
        ];
        component.set('v.columns', [
            {label: 'Title', fieldName: 'title__c', type: 'text'},
            {label: 'Author Fullname', fieldName: 'author_fullname__c', type: 'text'},
            {label: 'Thumbnail', fieldName: 'thumbnail__c', type: 'text'},
            {label: 'selftext', fieldName: 'selftext__c', type: 'longtext'},
            {type: 'action', typeAttributes: { rowActions: actions } } 
    ]);

    helper.pullData(component);
    },

    handleRowAction: function (component, event, helper) {
        var action = event.getParam('action');
        switch (action.name) {
            case 'view':
                helper.viewRecord(component, event);
                break;
            case 'edit':
                helper.editRecord(component, event);
                break;
            case 'delete':
                helper.deleteRecord(component, event);
                break;
        }
    },
 })