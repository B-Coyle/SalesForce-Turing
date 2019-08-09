public with sharing class contactList {

    public Contact[] contacts{get; private set;} 

    public contactList() {
        contacts = [SELECT Name, Title, Phone, Email FROM Contact];
    }
}


//private/public, data type, and a name are the three things it's going to need to work 