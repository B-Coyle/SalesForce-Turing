public with sharing class contactList {

    private Contact[] contacts; 

    public contactList() {
        contacts = [SELECT Name FROM Contact];
    }

    public Contact[] getContacts(){
        return contacts;
    }
}


//private/public, data type, and a name are the three things it's going to need to work 