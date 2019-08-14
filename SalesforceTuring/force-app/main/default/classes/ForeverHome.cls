public with sharing class ForeverHome {

    public String state{get; private set;}
    public Child_c child {get; private set;}
    public Parent_c parent {get; private set;}


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
        state = 'save'
    }

}
