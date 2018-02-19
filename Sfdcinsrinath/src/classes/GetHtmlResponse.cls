public with sharing class GetHtmlResponse {
    public String response {get; set;}
    public GetHtmlResponse() {
        
        HttpCalloutSample api = new HttpCalloutSample();
        response =api.getCalloutResponseContents('https://www.pluralsight.com/');
        
 
     //PdfSendEmail emil=new PdfSendEmail();
     //emil.getDeliverAsPDF('VfPageString');
     //GeneratePDF pd=new GeneratePDF();    
     //PdfEmailController emailing=new PdfEmailController();
     //emailing.sendPdf();
}
}