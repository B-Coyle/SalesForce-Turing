public with sharing class ForeverHome {

    public String state{get; private set;}
    public Child__c child {get; set;}
    public Parent__c parent {get; set;}
    public String bedtime_hour{get; set;}
    public String bedtime_minute{get; set;}
    public String bedtime_choice{get; set;}

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

    public void setHour() {
        integer hour = Integer.valueOf(bedtime_hour);
        if (bedtime_choice == 'PM'){
            bedtime_hour += 12;
        }
    }

    public void saveParent() {
        state = 'save';
        setHour();
        parent.bedtime__c = Time.newInstance(setHour(), Integer.valueOf(bedtime_minute), 0, 0);
        insert parent;
    }

    public void saveChild() {
        state = 'save';
        setHour();
        child.bedtime__c = Time.newInstance(setHour(), Integer.valueOf(bedtime_minute), 0, 0);
        insert child;
    }

    public SelectOption[] getbedtime_hours() {
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
            new SelectOption('0', '12')
        };
    }

    public SelectOption[] getbedtime_minutes() {
           return new SelectOption[]{
            new SelectOption('0', '0'),
            new SelectOption('15', '15'),
            new SelectOption('25', '25'),
            new SelectOption('30', '30'),
            new SelectOption('45', '45')
           };
    }

    public SelectOption[] getbedtime_ms() {
            bedtime_choice = 'PM';
            return new SelectOption[]{
            new SelectOption('AM', 'AM'),
            new SelectOption('PM', 'PM')
           };
    }

}
