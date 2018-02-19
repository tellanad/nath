/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SMSBulkCampaignProcess implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful {
    global SMSBulkCampaignProcess(Campaign campaign, Id campaignid, String smsAccount, String smsMessage, String rateCode, String senderId, Boolean includeContactLeadSmsHistory) {

    }
    global void execute(Database.BatchableContext BC, List<CampaignMember> scope) {

    }
    global void finish(Database.BatchableContext info) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
