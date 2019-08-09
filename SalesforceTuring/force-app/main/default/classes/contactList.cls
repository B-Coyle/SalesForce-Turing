public with sharing class contactList {
    public contactList() {
        Contact[] contacts = [SELECT Id FROM Contact];
    }
}


//private/public, data type, and a name are the three things it's going to need to work 