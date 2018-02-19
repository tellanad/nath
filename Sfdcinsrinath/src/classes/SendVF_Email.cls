public class SendVF_Email {

    
    public PageReference sendEmail(List<Id> lstId){
        List<String> EmailIds = 'tellanad@gmail.com'.split(',');

        PageReference ref = Page.VFpageString;
        Blob b = ref.getContentAsPDF();

        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();

        Messaging.EmailFileAttachment efa1 = new Messaging.EmailFileAttachment();
        efa1.setFileName('attachment_WORK.pdf');
        efa1.setBody(b);

        String addresses;
        email.setSubject( 'Check VF From PB' +String.valueOf(DateTime.now()));
        email.setToAddresses( EmailIds  );
        email.setPlainTextBody('Hey there, I am an email Body');
        email.setFileAttachments(new Messaging.EmailFileAttachment[] {efa1});
        Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
        return null;
    }
}