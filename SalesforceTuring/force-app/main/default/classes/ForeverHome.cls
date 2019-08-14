public with sharing class ForeverHome {

    public String state{get; private set;}
    public Child__c child {get; private set;}
    public Parent__c parent {get; private set;}


    public ForeverHome() {
        state = 'registrationChoice';
   
    }

    public void redirectChildRegistration() {
        state = 'childRegistration';
    }

    public void redirectParentRegistration() {
        state = 'parentRegistration';

    }

    public void save() {
        state = 'save';
    }

}
