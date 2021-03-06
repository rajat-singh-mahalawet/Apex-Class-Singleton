public class AccountCFRecordType {

    // private static variable referencing the class
    private static AccountCFRecordType instance = null;
    public String id {get;private set;} // the id of the record type
 
    // The constructor is private and initializes the id of the record type
    private AccountCFRecordType(){
        
        id = Account.sObjectType.getDescribe().getRecordTypeInfosByName().get('Community Fundraising').getRecordTypeId();
    }

    // a static method that returns the instance of the record type
    public static AccountCFRecordType getInstance(){
        // lazy load the record type - only initialize if it doesn't already exist
        if(instance == null) instance = new AccountCFRecordType();
        return instance;
    }
}
