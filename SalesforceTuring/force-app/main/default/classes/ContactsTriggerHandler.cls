public without sharing class ContactsTriggerHandler {
    public static void calculateContacts (contact[] contacts) {
        aggregateResult[] results = [Select count(id), accountid
        from contact where id in :contacts group by accountid];

        for(aggregateResult result : results) {
            
        }
    }
}
