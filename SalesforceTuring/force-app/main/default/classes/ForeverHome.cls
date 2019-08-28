public with sharing class ForeverHome {

    public String state{get; private set;}
    public Child__c child {get; set;}
    public Parent__c parent {get; set;}


    public ForeverHome() {
        state = 'registrationChoice';
   
    }

    public void redirectChildRegistration() {
        child = new Child__c();
        state = 'childRegistration';
    }

    public void redirectParentRegistration() {
        parent = new Parent__c();
        state = 'parentRegistration';

    }

    public void saveParent() {
        state = 'save';
        insert parent;
        }

    public void saveChild() {
        state = 'save';
        insert child;
    }

}
