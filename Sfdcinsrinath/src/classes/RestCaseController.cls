@RestResource(urlMapping='/FieldCase/*')
global with sharing class RestCaseController {
 @HttpGet	
    global static List<case> getOpenCases()
    {
        String companyName=RestContext.request.params.get('commpanyname');
        Account company=[select Id,name,BillingState from Account where name=:companyName];
        List<case> cases=[select id,subject,status,ownerId,Owner.Name from case where AccountId=:company.Id];
        return cases;
        
    }
    
}