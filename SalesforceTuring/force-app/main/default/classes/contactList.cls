public with sharing class contactList {

    public Contact[] contacts{get; private set;} 

    public String Name{get; set;}

    public contactList() {
        contacts = [SELECT Name, Title, Phone, Email FROM Contact];
    }

    public void filter() {

        String query = 'SELECT Name, Title, Phone, Email FROM Contact WHERE firstName = :Name';

        contacts = [SELECT Name, Title, Phone, Email FROM Contact WHERE firstName = :Name];


    }
}


//private/public, data type, and a name are the three things it's going to need to work 