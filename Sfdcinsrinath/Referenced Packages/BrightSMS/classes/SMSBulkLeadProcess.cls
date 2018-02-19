/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SMSBulkLeadProcess implements Database.AllowsCallouts, Database.Batchable<Lead>, Database.Stateful {
    global SMSBulkLeadProcess(List<Lead> leads, String smsAccount, String smsMessage, String rateCode, String senderId, Boolean includeContactLeadSmsHistory) {

    }
    global void execute(Database.BatchableContext info, List<Lead> scope) {

    }
    global void finish(Database.BatchableContext info) {

    }
    global System.Iterable start(Database.BatchableContext info) {
        return null;
    }
global class SMSCustomIterable implements System.Iterator<Lead> {
    global Boolean hasNext() {
        return null;
    }
    global Lead next() {
        return null;
    }
}
global class smsIterator implements System.Iterable<Lead> {
    global smsIterator(List<Lead> leads) {

    }
    global System.Iterator Iterator() {
        return null;
    }
}
}
