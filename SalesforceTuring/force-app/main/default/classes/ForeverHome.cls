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

    public SelectOption[] setBedtimeHour() {
        return new SelectOption[]{
            new SelectOption('1', '1'),
            new SelectOption('2', '2'),
            new SelectOption('3', '3'),
            new SelectOption('4', '4'),
            new SelectOption('5', '5'),
            new SelectOption('6', '6'),
            new SelectOption('7', '7'),
            new SelectOption('8', '8'),
            new SelectOption('9', '9'),
            new SelectOption('10', '10'),
            new SelectOption('11', '11'),
            new SelectOption('12', '12')
        };
    }

}
