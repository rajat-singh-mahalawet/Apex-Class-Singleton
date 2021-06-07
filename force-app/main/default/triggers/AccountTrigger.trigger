trigger AccountTrigger on Account (before insert, before update) {
    for(Account record : Trigger.new){

        // Instantiate the record type using the singleton class
        AccountCFRecordType rt = AccountCFRecordType.getInstance();

    }
}