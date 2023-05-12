/**
 * @description       : reddit_itemsController
 * @author            : Marco Alavez
 * @group             : 
 * @last modified on  : 05-12-2023
 * @last modified by  : Marco Alavez
**/
public with sharing class reddit_itemsController {

    @AuraEnabled
    public static List<reddit_items__c> buscarreddit_items = new List<reddit_items__c>(){
        try {
            List<reddit_items__c> reddItemsList =[Select Id, title__c, author_fullname__c, thumbnail__c, selftext__c From reddit_items__c  Order by CreatedDate Asc];

            System.debug('#### reddItemsList ' + reddItemsList);
        } catch (Exception e) {
            System.debug('#### Exception ' +e.getMessage());
        }

        return reddItemsList;
    }




}