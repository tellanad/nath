/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ClickSendSMSSelected_Batch implements Database.AllowsCallouts, Database.Batchable<SObject> {
    global List<Contact> contacts;
    global String SMSTemplateBody;
    global String status;
    global ClickSendSMSSelected_Batch(List<String> ids, String strSMSBody) {

    }
    global void execute(Database.BatchableContext BC, List<Contact> contacts) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
global class wrapperMsg {
    global wrapperMsg(String from_v, String to_v, Id custom_string_v, String source_v, String body_v) {

    }
}
}
