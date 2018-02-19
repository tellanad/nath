/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SendMessageInvocableAction {
    global SendMessageInvocableAction() {

    }
    @InvocableMethod(label='Send Single Text To Mapped Record' description='Send Text Message to records of object with a valid TextUs Contact Object Mapping Settings.')
    global static void sendSingleText(List<tubl.SendMessageInvocableAction.SendTextMessageActionRequest> sendMessageRequests) {

    }
global class SendTextMessageActionException extends Exception {
}
global class SendTextMessageActionRequest {
    @InvocableVariable(label='Message Context' description='Id od the record which represents the context of the message being sent.' required=false)
    global Id contextId;
    @InvocableVariable(label='Message Text' description='Literal text of the message being sent.' required=true)
    global String message;
    @InvocableVariable(label='Person Id' description='Id of the record to representing a person to whom the message will be sent. All ids must belong to a same Object Type in a single call.' required=true)
    global Id recordId;
    @InvocableVariable(label='User Id' description='Id of the user who will be used as a sender of the message, if empty the user who started the workflow will be used.' required=false)
    global Id userId;
    global SendTextMessageActionRequest() {

    }
}
}
