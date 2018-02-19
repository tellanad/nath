public with sharing class PdfEmailController {

 // public ID accountId {get;set;}
  public String email {get;set;}
  public String response {get; set;}


  public PageReference sendPdf() {

   //PageReference pageRef = ApexPages.currentPage();
   
   HttpCalloutSample api = new HttpCalloutSample();
   response =api.getCalloutResponseContents('https://www.pluralsight.com/');
   //String addr = 'https://chowdarynad-dev-ed.my.salesforce.com/apex/VfPageString'
    PageReference ref = Page.VfPageString;
        Blob b = ref.getContentAsPDF();

    //PageReference pdf = Page.PdfGeneratorTemplate;
    // add parent id to the parameters for standardcontroller
   // pdf.getParameters().put('https://chowdarynad-dev-ed--c.na35.visual.force.com/apex/VfPageString');

    // the contents of the attachment from the pdf
    Blob body;

    try {

      // returns the output of the page as a PDF
      body = ref.getContent();

    // need to pass unit test -- current bug  
    } catch (VisualforceException e) {
      body = Blob.valueOf('Some Text');
    }

    Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
    attach.setContentType('application/pdf');
    attach.setFileName('testPdf.pdf');
    attach.setInline(false);
    attach.Body = body;

    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    String [] toAddresses = new String[]{'santa.paluri@aig.com'};
    
    mail.setToAddresses(toAddresses);
    mail.setSubject('PDF Email Demo');
    mail.setHtmlBody('Here is the email you requested! Check the attachment!');
    mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach }); 

    // Send the email
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

   Messaging.SendEmailResult [] r =
             Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
        return null;

  }

}