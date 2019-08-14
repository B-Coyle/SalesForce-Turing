public without sharing class ContactsTriggerHandler {

    public static void calculateContacts(Set<Id> accountIds) {

        aggregateResult[] results = [Select count(id) the_count, accountId
        FROM contact WHERE accountId in :accountIds group by accountId];

        account[] accounts = new account[]{};

        for(aggregateResult result : results) {
            Account account = new Account(id = (Id)result.get('accountId'), Contact_count__c = (Integer)result.get('the_count'));
            accounts.add(account);
        }
    
         update accounts;
        
    }


    public static void calculateContactsOnInsert (contact[] contacts) {
        Set<Id> accountIds = new Set<Id>{};

        for(Contact contact : contacts) {
            accountIds.add(contact.accountId);
        }
        calculateContacts(accountIds);
    }

    public static void calculateContactsOnUpdate (Map<Id, Contact> oldContactsById, Map<Id, Contact> newContactsById) {
        Set<Id> accountIds = new Set<Id>{};

        for(Id contactId : newContactsById.keySet()) {
            Contact oldContact = oldContactsById.get(contactId);
            Contact newContact = newContactsById.get(contactId);

            if(oldContact.accountId != newContact.accountId) {
                accountIds.add(newContact.accountId); 
                accountIds.add(oldContact.accountId);
            }
            
        }
         calculateContacts(accountIds);

    }
}
