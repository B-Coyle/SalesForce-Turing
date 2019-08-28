public with sharing class ForeverHome {

    public String state{get; private set;}
    public Child__c child {get; set;}
    public Parent__c parent {get; set;}


    public ForeverHome() {
        state = 'registrationChoice';
   
    }

    public void redirectChildRegistration() {
        state = 'childRegistration';
    }

    public void redirectParentRegistration() {
        state = 'parentRegistration';

    }

    public void saveParent() {
        state = 'saveParent';
    }

    public void saveChild() {
        state = 'saveChild';
    }

}
