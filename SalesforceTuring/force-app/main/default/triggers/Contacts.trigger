trigger Contacts on Contact (after insert, after update) {
    if (Trigger.isAfter) {
         if (Trigger.isInsert) {
             ContactsTriggerHandler.calculateContactsOnInsert(Trigger.new);
        } else if (Trigger.isUpdate) {
            ContactsTriggerHandler.calculateContactsOnUpdate(Trigger.oldMap, Trigger.newMap);
          }
    } 
}