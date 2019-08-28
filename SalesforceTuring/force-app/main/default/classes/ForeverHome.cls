public with sharing class ForeverHome {

    public String state{get; private set;}
    public Child__c child {get; set;}
    public Parent__c parent {get; set;}
    public String bedtime_hour{get; set;}
    public String bedtime_minute{get; set;}

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
        parent.bedtime__c = Time.newInstance(20, 0, 0, 0);
        state = 'save';
        insert parent;
        }

    public void saveChild() {
        child.bedtime__c = Time.newInstance(20, 0, 0, 0);
        state = 'save';
        insert child;
    }

}
