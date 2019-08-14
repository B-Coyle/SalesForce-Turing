public without sharing class ContactsTriggerHandler {
    public static void calculateContacts (contact[] contacts) {
        aggregateResult[] results = [Select count(id) the_count, accountid
        from contact where id in :contacts group by accountid];

        account[] accounts = new account[]{};

        for(aggregateResult result : results) {
            Account account = new account(id = (Id)result.get('accountid'), Contact_count__c = (Integer)result.get('the_count'));
            accounts.add(account);
        }
    
         update accounts;

    }
}
