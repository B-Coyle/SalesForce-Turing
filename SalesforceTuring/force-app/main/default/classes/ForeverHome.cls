public with sharing class ForeverHome {

    public String state{get; private set;}


    public ForeverHome() {
        state = 'registrationChoice';
   
    }

    public void redirectChildRegistration() {
        state = 'childRegistration';
    }

    public void redirectParentRegistration() {
        state = 'parentRegistration';

    }

}
