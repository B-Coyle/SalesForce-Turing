public class Utilities {
    
    public static void sendEmail(String body, String subject, String recipient) {
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        // toAddresses.add(recipient);
        
        mail.setToAddresses(new String[] {recipient});
        
        mail.setSubject(subject);
        
        mail.setPlainTextBody(body);
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
    
}